# -*- encoding : utf-8 -*-
require 'spec_helper'

describe VisStatusObserver do
  context "after create" do
    context "an activity or help in a lecture wall (statusable Lecture)" do
      let!(:lecture) { FactoryBot.create(:lecture) }
      let(:help) { FactoryBot.build(:help, :statusable => lecture) }
      it "should call VisClient.notify_delayed" do
        VisClient.should_receive(:notify_delayed).
          with("/hierarchy_notifications.json", help.type.downcase,
               help)

        ActiveRecord::Observer.with_observers(:vis_status_observer) do
          help.save
        end
      end
    end

    context "an activity or help in a space wall (statusable Space)" do
      let!(:space) { FactoryBot.create(:space) }
      let(:activity) { FactoryBot.build(:activity, :statusable => space) }
      it "should call VisClient.notify_delayed" do
        VisClient.should_receive(:notify_delayed).
          with("/hierarchy_notifications.json", activity.type.downcase,
               activity)

        ActiveRecord::Observer.with_observers(:vis_status_observer) do
          activity.save
        end
      end
    end

    context "an answer in a lecture wall" do
      let!(:lecture) { FactoryBot.create(:lecture) }
      let!(:help) { FactoryBot.create(:help, :statusable => lecture) }
      let(:answer) { FactoryBot.build(:answer, :statusable => help,
                                  :in_response_to => help) }
      it "should call VisClient.notify_delayed" do
        VisClient.should_receive(:notify_delayed).
          with("/hierarchy_notifications.json", "answered_help",
               answer)

        ActiveRecord::Observer.with_observers(:vis_status_observer) do
          answer.save
        end
      end
    end

    context "an aswer in a space wall" do
      let!(:space) { FactoryBot.create(:space) }
      let!(:activity) { FactoryBot.create(:activity, :statusable => space) }
      let(:answer) { FactoryBot.build(:answer, :statusable => activity,
                                   :in_response_to => activity) }
      it "should call VisClient.notify_delayed" do
        VisClient.should_receive(:notify_delayed).
          with("/hierarchy_notifications.json", "answered_activity",
               answer)

        ActiveRecord::Observer.with_observers(:vis_status_observer) do
          answer.save
        end
      end
    end
  end

  context "after destroy" do
    context "an activity or help in a lecture wall (statusable Lecture)" do
      let!(:lecture) { FactoryBot.create(:lecture) }
      let(:help) { FactoryBot.create(:help, :statusable => lecture) }
      it "should call VisClient.notify_delayed" do
        VisClient.should_receive(:notify_delayed).
          with("/hierarchy_notifications.json",
               "remove_"+help.type.downcase,
               help)

        ActiveRecord::Observer.with_observers(:vis_status_observer) do
          help.destroy
        end
      end
    end

    context "an activity or help in a space wall (statusable Space)" do
      let!(:space) { FactoryBot.create(:space) }
      let(:activity) { FactoryBot.create(:activity, :statusable => space) }
      it "should call VisClient.notify_delayed" do
        VisClient.should_receive(:notify_delayed).
          with("/hierarchy_notifications.json",
               "remove_"+activity.type.downcase,
               activity)

        ActiveRecord::Observer.with_observers(:vis_status_observer) do
          activity.destroy
        end
      end
    end

    context "an answer in a lecture wall" do
      let!(:lecture) { FactoryBot.create(:lecture) }
      let!(:activity) { FactoryBot.create(:activity, :statusable => lecture) }
      let(:answer) { FactoryBot.create(:answer, :statusable => activity,
                                  :in_response_to => activity) }
      it "should call VisClient.notify_delayed" do
        VisClient.should_receive(:notify_delayed).
          with("/hierarchy_notifications.json", "remove_answered_activity",
               answer)

        ActiveRecord::Observer.with_observers(:vis_status_observer) do
          answer.destroy
        end
      end
    end

    context "an aswer in a space wall" do
      let!(:space) { FactoryBot.create(:space) }
      let!(:activity) { FactoryBot.create(:activity, :statusable => space) }
      let(:answer) { FactoryBot.create(:answer, :statusable => activity,
                                   :in_response_to => activity) }
      it "should call VisClient.notify_delayed" do
        VisClient.should_receive(:notify_delayed).
          with("/hierarchy_notifications.json", "remove_answered_activity",
               answer)

        ActiveRecord::Observer.with_observers(:vis_status_observer) do
          answer.destroy
        end
      end
    end

  end
end
