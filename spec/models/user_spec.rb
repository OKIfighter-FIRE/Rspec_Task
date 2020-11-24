require 'rails_helper'

RSpec.describe User, type: :model do
  describe "名前の表示" do
    # let(:params) {{name: "Kinjo", age: 1}}
    # let(:params2) {{name: "Kinjo", age: 15}}
    # let(:params3) {{name: "Kinjo", age: 30}}
    let(:params) {{name:"Kinjo"}}
  it "年齢1:ユーザーの名前が取得できること" do
    # user = User.new(name:"Kinjo", age:1)
    params.merge!(age:1)
    user = User.new(params)
    expect(user.disp_name).to eq "Kinjoちゃん"
  end
  it "年齢15:ユーザーの名前が取得できること" do
    # user = User.new(name:"Kinjo", age:15)
    params.merge!(age:15)
    user = User.new(params)
    expect(user.disp_name).to eq "Kinjo君"
  end
  it "年齢20:ユーザーの名前が取得できること" do
    # user = User.new(name:"Kinjo", age:30)
    params.merge!(age:20)
    user = User.new(params)
    expect(user.disp_name).to eq "Kinjoさん"
  end
 end
end
