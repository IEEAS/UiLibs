local library = {}
function library:AddWindow()
    local Prime = Instance.new("TextLabel")
    local Hub = Instance.new("TextLabel")
    local UiTest = Instance.new("ScreenGui")
    local Container = Instance.new("Frame")
    local UICorner = Instance.new("UICorner")
    local Main = Instance.new("Frame")
    local UiConcac = Instance.new("UICorner")

    UiTest.Name = "UiTest"
    UiTest.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
    UiTest.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
    
    Container.Name = "Container"
    Container.Parent = UiTest
    Container.BackgroundColor3 = Color3.fromRGB(107, 107, 107)
    Container.Position = UDim2.new(0.288475156, 0, 0.255214721, 0)
    Container.Size = UDim2.new(0, 900, 0, 354)
    
    UICorner.CornerRadius = UDim.new(0, 9)
    UICorner.Parent = Container
    
    Main.Name = "Main"
    Main.Parent = Container
    Main.BackgroundColor3 = Color3.fromRGB(59, 59, 59)
    Main.Size = UDim2.new(0, 900, 0, 33)
    
    UiConcac.CornerRadius = UDim.new(0, 9)
    UiConcac.Name = "UiConcac"
    UiConcac.Parent = Main

    Prime.Name = "Prime"
    Prime.Parent = Main
    Prime.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    Prime.BackgroundTransparency = 1.000
    Prime.BorderColor3 = Color3.fromRGB(27, 42, 53)
    Prime.Position = UDim2.new(-0.0333333313, 0, 0.121212125, 0)
    Prime.Size = UDim2.new(0, 145, 0, 25)
    Prime.Font = Enum.Font.GothamBold
    Prime.Text = "Prime"
    Prime.TextColor3 = Color3.fromRGB(255, 255, 255)
    Prime.TextScaled = true
    Prime.TextSize = 14.000
    Prime.TextWrapped = true
    
    Hub.Name = "Hub"
    Hub.Parent = Main
    Hub.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    Hub.BackgroundTransparency = 1.000
    Hub.BorderColor3 = Color3.fromRGB(27, 42, 53)
    Hub.Position = UDim2.new(0.0355555564, 0, 0.121212125, 0)
    Hub.Size = UDim2.new(0, 145, 0, 25)
    Hub.Font = Enum.Font.GothamBold
    Hub.Text = "Hub"
    Hub.TextColor3 = Color3.fromRGB(0, 158, 140)
    Hub.TextScaled = true
    Hub.TextSize = 14.000
    Hub.TextWrapped = true
    local Tab = {}
    function Tab:AddTab(text)
        local TabList = Instance.new("Frame")
        local UiConcac_2 = Instance.new("UICorner")
        local Tab = Instance.new("TextButton")
        local ScrollingFrame = Instance.new("ScrollingFrame")

        TabList.Name = "TabList"
        TabList.Parent = Main
        TabList.BackgroundColor3 = Color3.fromRGB(59, 59, 59)
        TabList.Position = UDim2.new(0.0155555559, 0, 1.18645048, 0)
        TabList.Size = UDim2.new(0, 871, 0, 29)
        
        UiConcac_2.CornerRadius = UDim.new(0, 9)
        UiConcac_2.Name = "UiConcac"
        UiConcac_2.Parent = TabList
        
        Tab.Name = "Tab"
        Tab.Parent = TabList
        Tab.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        Tab.BackgroundTransparency = 1.000
        Tab.Position = UDim2.new(0.0137772681, 0, 0.103448279, 0)
        Tab.Size = UDim2.new(0, 60, 0, 22)
        Tab.Font = Enum.Font.GothamBold
        Tab.Text = "Tab 1"
        Tab.TextColor3 = Color3.fromRGB(194, 194, 194)
        Tab.TextScaled = true
        Tab.TextSize = 14.000
        Tab.TextWrapped = true
        
        ScrollingFrame.Parent = Tab
        ScrollingFrame.Active = true
        ScrollingFrame.BackgroundColor3 = Color3.fromRGB(62, 62, 62)
        ScrollingFrame.BorderColor3 = Color3.fromRGB(62, 62, 62)
        ScrollingFrame.Position = UDim2.new(-0.183333337, 0, 1.59090912, 0)
        ScrollingFrame.Size = UDim2.new(0, 871, 0, 268)
        local Section = {}
        function Section:CreateSection(text)
            local SectionFrame = Instance.new("Frame")
            local Section = Instance.new("UICorner")

            SectionFrame.Name = "SectionFrame"
            SectionFrame.Parent = ScrollingFrame
            SectionFrame.BackgroundColor3 = Color3.fromRGB(102, 102, 102)
            SectionFrame.Position = UDim2.new(0.0126291616, 0, 0.0298507456, 0)
            SectionFrame.Size = UDim2.new(0, 389, 0, 252)
            
            Section.CornerRadius = UDim.new(0, 9)
            Section.Name = "Section"
            Section.Parent = SectionFrame
            local Button = {}
            function Button:AddButton(text,callback)
                local Button = Instance.new("TextButton")
                local ButtoCorner = Instance.new("UICorner")

                Button.Name = "Button"
                Button.Parent = SectionFrame
                Button.BackgroundColor3 = Color3.fromRGB(0, 158, 140)
                Button.Position = UDim2.new(0.0268387478, 0, 0.162698418, 0)
                Button.Size = UDim2.new(0, 367, 0, 26)
                Button.Font = Enum.Font.GothamBold
                Button.Text = "Trum"
                Button.TextColor3 = Color3.fromRGB(255, 255, 255)
                Button.TextScaled = true
                Button.TextSize = 14.000
                Button.TextWrapped = true
                Button.MouseButton1Click:Connect(function()
                    pcall(callback)
                end)
                
                ButtoCorner.CornerRadius = UDim.new(0, 3)
                ButtoCorner.Name = "ButtoCorner"
                ButtoCorner.Parent = Button
            end
            return Button
            local Toggle = {}
            function Toggle:AddToggle(text,callback)
                local Toggle = Instance.new("TextButton")
                local ToggleCorner = Instance.new("UICorner")
                local Name = Instance.new("TextLabel")
                local ToggleOn = Instance.new("Frame")
                local ToggleOnCorner = Instance.new("UICorner")
            
                Toggle.Name = "Toggle"
                Toggle.Parent = SectionFrame
                Toggle.BackgroundColor3 = Color3.fromRGB(72, 72, 72)
                Toggle.Position = UDim2.new(0.0257069431, 0, 0.46825397, 0)
                Toggle.Size = UDim2.new(0, 28, 0, 29)
                Toggle.Font = Enum.Font.SourceSans
                Toggle.Text = ""
                Toggle.TextColor3 = Color3.fromRGB(0, 0, 0)
                Toggle.TextSize = 14.000
                Toggle.MouseButton1Click:Connect(ToggleOn)
                
                local function ToggleOn()
                    if not script.Parent.ToggleOn.Visible then
                        script.Parent.ToggleOn.Visible = true
                        pcall(callback, ToggleOn)
                    elseif script.Parent.ToggleOn.Visible then
                        script.Parent.ToggleOn.Visible = false
                    end
                end
                
                ToggleCorner.CornerRadius = UDim.new(0, 2)
                ToggleCorner.Name = "ToggleCorner"
                ToggleCorner.Parent = Toggle
                
                Name.Name = "Name"
                Name.Parent = Toggle
                Name.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                Name.BackgroundTransparency = 1.000
                Name.Position = UDim2.new(1.25, 0, 0, 0)
                Name.Size = UDim2.new(0, 82, 0, 29)
                Name.Font = Enum.Font.GothamBold
                Name.Text = text
                Name.TextColor3 = Color3.fromRGB(0, 165, 140)
                Name.TextScaled = true
                Name.TextSize = 14.000
                Name.TextWrapped = true
                
                ToggleOn.Name = "ToggleOn"
                ToggleOn.Parent = Toggle
                ToggleOn.BackgroundColor3 = Color3.fromRGB(0, 170, 133)
                ToggleOn.Size = UDim2.new(0, 28, 0, 29)
                ToggleOn.Visible = false
                
                ToggleOnCorner.CornerRadius = UDim.new(0, 2)
                ToggleOnCorner.Name = "ToggleOnCorner"
                ToggleOnCorner.Parent = ToggleOn
            end
            return Toggle
            local Spec = {}
            function Spec:AddSperator(text)
                local Sperator = Instance.new("TextLabel")

                Sperator.Name = "Sperator"
                Sperator.Parent = SectionFrame
                Sperator.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                Sperator.BackgroundTransparency = 1.000
                Sperator.Position = UDim2.new(-0.395886898, 0, 0.0238095243, 0)
                Sperator.Size = UDim2.new(0, 367, 0, 25)
                Sperator.Font = Enum.Font.GothamBold
                Sperator.Text = text
                Sperator.TextColor3 = Color3.fromRGB(0, 156, 127)
                Sperator.TextScaled = true
                Sperator.TextSize = 14.000
                Sperator.TextWrapped = true
            end
            return Spec
        end
        return Tab
    end
    return Section
end

return library
