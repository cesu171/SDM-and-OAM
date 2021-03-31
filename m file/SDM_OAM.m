classdef SDM_OAM < matlab.apps.AppBase

    % Properties that correspond to app components
    properties (Access = public)
        UIFigure                        matlab.ui.Figure
        Image                           matlab.ui.control.Image
        CeSamuelSucsu2015fiteduLabel    matlab.ui.control.Label
        OffAxisParabolicMirrorBasedBCMforSDMPatternCalculationLabel  matlab.ui.control.Label
        TabGroup                        matlab.ui.container.TabGroup
        ConfigurationTab                matlab.ui.container.Tab
        CarrierFiberSettingPanel        matlab.ui.container.Panel
        degLabel_6                      matlab.ui.control.Label
        MaximumInjectionAngleEditField  matlab.ui.control.NumericEditField
        MaximumInjectionAngleEditFieldLabel  matlab.ui.control.Label
        NASlider_2                      matlab.ui.control.Slider
        NASlider_2Label                 matlab.ui.control.Label
        CoreDiameterSlider              matlab.ui.control.Slider
        CoreDiameterSliderLabel         matlab.ui.control.Label
        NAField_2                       matlab.ui.control.NumericEditField
        mLabel_2                        matlab.ui.control.Label
        MFDField_2                      matlab.ui.control.NumericEditField
        FocusingLensesMirrorsSettingPanel  matlab.ui.container.Panel
        mmLabel_15                      matlab.ui.control.Label
        HousingDiaEditField             matlab.ui.control.NumericEditField
        HousingDiaEditFieldLabel        matlab.ui.control.Label
        mmLabel_14                      matlab.ui.control.Label
        BeamDiaEditField                matlab.ui.control.NumericEditField
        BeamDiaEditFieldLabel           matlab.ui.control.Label
        mmLabel_13                      matlab.ui.control.Label
        fEditField                      matlab.ui.control.NumericEditField
        fEditFieldLabel                 matlab.ui.control.Label
        ReceivingAngleEditField         matlab.ui.control.NumericEditField
        ReceivingAngleEditFieldLabel    matlab.ui.control.Label
        degLabel_7                      matlab.ui.control.Label
        SystemCheckButton               matlab.ui.control.Button
        SystemCheckLamp                 matlab.ui.control.Lamp
        InjectsFibersSettingPanel       matlab.ui.container.Panel
        SignalwavelengthDropDown        matlab.ui.control.DropDown
        SignalwavelengthDropDownLabel   matlab.ui.control.Label
        nmLabel                         matlab.ui.control.Label
        SingleModeOperationCheckLamp    matlab.ui.control.Lamp
        SingleModeOperationCheckLampLabel  matlab.ui.control.Label
        VEditField                      matlab.ui.control.NumericEditField
        VEditFieldLabel                 matlab.ui.control.Label
        NASlider                        matlab.ui.control.Slider
        NASliderLabel                   matlab.ui.control.Label
        NAField                         matlab.ui.control.NumericEditField
        mLabel                          matlab.ui.control.Label
        MFDField                        matlab.ui.control.NumericEditField
        ModeFieldDiameterSlider         matlab.ui.control.Slider
        ModeFieldDiameterSliderLabel    matlab.ui.control.Label
        ChannelsSettingPanel            matlab.ui.container.Panel
        InjAngleRangeEditField_5        matlab.ui.control.NumericEditField
        InjAngleRangeEditField_5Label   matlab.ui.control.Label
        degLabel_12                     matlab.ui.control.Label
        InjAngleRangeEditField_4        matlab.ui.control.NumericEditField
        InjAngleRangeEditField_4Label   matlab.ui.control.Label
        degLabel_11                     matlab.ui.control.Label
        InjAngleRangeEditField_3        matlab.ui.control.NumericEditField
        InjAngleRangeEditField_3Label   matlab.ui.control.Label
        degLabel_10                     matlab.ui.control.Label
        InjAngleRangeEditField_2        matlab.ui.control.NumericEditField
        InjAngleRangeEditField_2Label   matlab.ui.control.Label
        degLabel_9                      matlab.ui.control.Label
        degLabel_8                      matlab.ui.control.Label
        InjAngleRangeEditField          matlab.ui.control.NumericEditField
        InjAngleRangeEditFieldLabel     matlab.ui.control.Label
        Channel5InjectAngleGauge        matlab.ui.control.SemicircularGauge
        Channel5InjectAngleGaugeLabel   matlab.ui.control.Label
        InjectA_5                       matlab.ui.control.NumericEditField
        InjectAngleLabel_5              matlab.ui.control.Label
        YPosition1_5                    matlab.ui.control.NumericEditField
        YPositionEditFieldLabel_5       matlab.ui.control.Label
        XPosition1_5                    matlab.ui.control.NumericEditField
        XPositionEditFieldLabel_5       matlab.ui.control.Label
        Channel5Lamp                    matlab.ui.control.Lamp
        Channel5LampLabel               matlab.ui.control.Label
        mmLabel_12                      matlab.ui.control.Label
        mmLabel_11                      matlab.ui.control.Label
        degLabel_5                      matlab.ui.control.Label
        Switch_5                        matlab.ui.control.ToggleSwitch
        Channel4InjectAngleGauge        matlab.ui.control.SemicircularGauge
        Channel4InjectAngleGaugeLabel   matlab.ui.control.Label
        InjectA_4                       matlab.ui.control.NumericEditField
        InjectAngleLabel_4              matlab.ui.control.Label
        YPosition1_4                    matlab.ui.control.NumericEditField
        YPositionEditFieldLabel_4       matlab.ui.control.Label
        XPosition1_4                    matlab.ui.control.NumericEditField
        XPositionEditFieldLabel_4       matlab.ui.control.Label
        Channel4Lamp                    matlab.ui.control.Lamp
        Channel4LampLabel               matlab.ui.control.Label
        mmLabel_10                      matlab.ui.control.Label
        mmLabel_9                       matlab.ui.control.Label
        degLabel_4                      matlab.ui.control.Label
        Switch_4                        matlab.ui.control.ToggleSwitch
        Channel3InjectAngleGauge        matlab.ui.control.SemicircularGauge
        Channel3InjectAngleGaugeLabel   matlab.ui.control.Label
        InjectA_3                       matlab.ui.control.NumericEditField
        InjectAngleLabel_3              matlab.ui.control.Label
        YPosition1_3                    matlab.ui.control.NumericEditField
        YPositionEditFieldLabel_3       matlab.ui.control.Label
        XPosition1_3                    matlab.ui.control.NumericEditField
        XPositionEditFieldLabel_3       matlab.ui.control.Label
        Channel3Lamp                    matlab.ui.control.Lamp
        Channel3LampLabel               matlab.ui.control.Label
        mmLabel_8                       matlab.ui.control.Label
        mmLabel_7                       matlab.ui.control.Label
        degLabel_3                      matlab.ui.control.Label
        Switch_3                        matlab.ui.control.ToggleSwitch
        Channel2InjectAngleGauge        matlab.ui.control.SemicircularGauge
        Channel2InjectAngleGaugeLabel   matlab.ui.control.Label
        InjectA_2                       matlab.ui.control.NumericEditField
        InjectAngleLabel_2              matlab.ui.control.Label
        YPosition1_2                    matlab.ui.control.NumericEditField
        YPositionEditFieldLabel_2       matlab.ui.control.Label
        XPosition1_2                    matlab.ui.control.NumericEditField
        XPositionEditFieldLabel_2       matlab.ui.control.Label
        Channel2Lamp                    matlab.ui.control.Lamp
        Channel2LampLabel               matlab.ui.control.Label
        mmLabel_6                       matlab.ui.control.Label
        mmLabel_5                       matlab.ui.control.Label
        degLabel_2                      matlab.ui.control.Label
        Switch_2                        matlab.ui.control.ToggleSwitch
        Channel1InjectAngleGauge        matlab.ui.control.SemicircularGauge
        Channel1InjectAngleGaugeLabel   matlab.ui.control.Label
        mmLabel_3                       matlab.ui.control.Label
        mmLabel_4                       matlab.ui.control.Label
        degLabel                        matlab.ui.control.Label
        InjectA                         matlab.ui.control.NumericEditField
        InjectAngleLabel                matlab.ui.control.Label
        YPosition1                      matlab.ui.control.NumericEditField
        YPositionEditFieldLabel         matlab.ui.control.Label
        XPosition1                      matlab.ui.control.NumericEditField
        XPositionEditFieldLabel         matlab.ui.control.Label
        Switch                          matlab.ui.control.ToggleSwitch
        Channel1Lamp                    matlab.ui.control.Lamp
        Channel1LampLabel               matlab.ui.control.Label
        OffAxisParabolicMirrorPanel     matlab.ui.container.Panel
        MirrorDiaCheckLamp              matlab.ui.control.Lamp
        MirrorDiaCheckLampLabel         matlab.ui.control.Label
        mmLabel_16                      matlab.ui.control.Label
        MirrorDiameterEditField         matlab.ui.control.NumericEditField
        MirrorDiameterEditFieldLabel    matlab.ui.control.Label
        ParentFocalLengthSlider         matlab.ui.control.Slider
        ParentFocalLengthSliderLabel    matlab.ui.control.Label
        PFL                             matlab.ui.control.NumericEditField
        EditFieldLabel                  matlab.ui.control.Label
        ReflectedFocalLengthRFLEditField  matlab.ui.control.NumericEditField
        ReflectedFocalLengthRFLEditFieldLabel  matlab.ui.control.Label
        mmLabel_2                       matlab.ui.control.Label
        mmLabel                         matlab.ui.control.Label
        PatternCalculationTab           matlab.ui.container.Tab
        ScreenDistanceEditField         matlab.ui.control.NumericEditField
        ScreenDistancemmSlider          matlab.ui.control.Slider
        ScreenDistancemmSliderLabel     matlab.ui.control.Label
        SystemStatusLamp                matlab.ui.control.Lamp
        SystemStatusLampLabel           matlab.ui.control.Label
        CalculatePatternButton          matlab.ui.control.Button
        UIAxes                          matlab.ui.control.UIAxes
        OAMRotationCalculationTab       matlab.ui.container.Tab
        Channel2Panel                   matlab.ui.container.Panel
        ChannelStatusLamp_2             matlab.ui.control.Lamp
        ChannelStatusLamp_2Label        matlab.ui.control.Label
        CounterclockwiseLabel_2         matlab.ui.control.Label
        Image2_4                        matlab.ui.control.Image
        ClockwiseLabel_2                matlab.ui.control.Label
        Image2_3                        matlab.ui.control.Image
        Channel5Panel                   matlab.ui.container.Panel
        ChannelStatusLamp_5             matlab.ui.control.Lamp
        ChannelStatusLamp_5Label        matlab.ui.control.Label
        CounterclockwiseLabel_5         matlab.ui.control.Label
        Image2_10                       matlab.ui.control.Image
        ClockwiseLabel_5                matlab.ui.control.Label
        Image2_9                        matlab.ui.control.Image
        Channel4Panel                   matlab.ui.container.Panel
        ChannelStatusLamp_4             matlab.ui.control.Lamp
        ChannelStatusLamp_4Label        matlab.ui.control.Label
        CounterclockwiseLabel_4         matlab.ui.control.Label
        Image2_8                        matlab.ui.control.Image
        ClockwiseLabel_4                matlab.ui.control.Label
        Image2_7                        matlab.ui.control.Image
        Channel3Panel                   matlab.ui.container.Panel
        ChannelStatusLamp_3             matlab.ui.control.Lamp
        ChannelStatusLamp_3Label        matlab.ui.control.Label
        CounterclockwiseLabel_3         matlab.ui.control.Label
        Image2_6                        matlab.ui.control.Image
        ClockwiseLabel_3                matlab.ui.control.Label
        Image2_5                        matlab.ui.control.Image
        Channel1Panel                   matlab.ui.container.Panel
        CounterclockwiseLabel           matlab.ui.control.Label
        Image2_2                        matlab.ui.control.Image
        ClockwiseLabel                  matlab.ui.control.Label
        Image2                          matlab.ui.control.Image
        ChannelStatusLamp               matlab.ui.control.Lamp
        ChannelStatusLampLabel          matlab.ui.control.Label
        OffAxisSettingPanel             matlab.ui.container.Panel
        CalculateRotationDirectionButton  matlab.ui.control.Button
        YAxismSlider                    matlab.ui.control.Slider
        YAxismSliderLabel               matlab.ui.control.Label
        XAxismSlider                    matlab.ui.control.Slider
        XAxismSliderLabel               matlab.ui.control.Label
        SystemStatusLamp_2              matlab.ui.control.Lamp
        SystemStatusLamp_2Label         matlab.ui.control.Label
    end

    % Callbacks that handle component events
    methods (Access = private)

        % Button pushed function: CalculatePatternButton
        function CalculatePatternButtonPushed(app, event)
            Green = [0 1 0];
            SSL = app.SystemStatusLamp.Color;
            if isequal(SSL,Green) == 1
                d = app.ScreenDistancemmSlider.Value;
                r = app.CoreDiameterSlider.Value/2000;
                cla(app.UIAxes);
                if strcmp(app.Switch.Value,'On')
                    outangle = app.InjectA.Value + (app.InjAngleRangeEditField.Value / 2);
                    inangle = app.InjectA.Value - (app.InjAngleRangeEditField.Value / 2);
                    t = linspace(0,2*pi);
                    if inangle < 0
                        if abs(inangle) > outangle
                            rin = 0;
                            rout = d * tand(abs(inangle))+r;
                        else
                            rin = 0;
                            rout = d * tand(outangle)+r;
                        end
                    else
                        rin = d * tand(inangle)-r;
                        rout = d * tand(outangle)+r;
                    end
                    patch(app.UIAxes,[rout*cos(t),rin*cos(t)],[rout*sin(t),rin*sin(t)],'r','linestyle','none');
                    pbaspect(app.UIAxes,[1 1 1]);
                end
                if strcmp(app.Switch_2.Value,'On')
                    outangle = app.InjectA_2.Value + (app.InjAngleRangeEditField_2.Value / 2);
                    inangle = app.InjectA_2.Value - (app.InjAngleRangeEditField_2.Value / 2);
                    t = linspace(0,2*pi);
                    if inangle < 0
                        if abs(inangle) > outangle
                            rin = 0;
                            rout = d * tand(abs(inangle))+r;
                        else
                            rin = 0;
                            rout = d * tand(outangle)+r;
                        end
                    else
                        rin = d * tand(inangle)-r;
                        rout = d * tand(outangle)+r;
                    end
                    patch(app.UIAxes,[rout*cos(t),rin*cos(t)],[rout*sin(t),rin*sin(t)],'r','linestyle','none');
                    pbaspect(app.UIAxes,[1 1 1]);
                end
                if strcmp(app.Switch_3.Value,'On')
                    outangle = app.InjectA_3.Value + (app.InjAngleRangeEditField_3.Value / 2);
                    inangle = app.InjectA_3.Value - (app.InjAngleRangeEditField_3.Value / 2);
                    t = linspace(0,2*pi);
                    if inangle < 0
                        if abs(inangle) > outangle
                            rin = 0;
                            rout = d * tand(abs(inangle))+r;
                        else
                            rin = 0;
                            rout = d * tand(outangle)+r;
                        end
                    else
                        rin = d * tand(inangle)-r;
                        rout = d * tand(outangle)+r;
                    end
                    patch(app.UIAxes,[rout*cos(t),rin*cos(t)],[rout*sin(t),rin*sin(t)],'r','linestyle','none');
                    pbaspect(app.UIAxes,[1 1 1]);
                end
                if strcmp(app.Switch_4.Value,'On')
                    outangle = app.InjectA_4.Value + (app.InjAngleRangeEditField_4.Value / 2);
                    inangle = app.InjectA_4.Value - (app.InjAngleRangeEditField_4.Value / 2);
                    t = linspace(0,2*pi);
                    if inangle < 0
                        if abs(inangle) > outangle
                            rin = 0;
                            rout = d * tand(abs(inangle))+r;
                        else
                            rin = 0;
                            rout = d * tand(outangle)+r;
                        end
                    else
                        rin = d * tand(inangle)-r;
                        rout = d * tand(outangle)+r;
                    end
                    patch(app.UIAxes,[rout*cos(t),rin*cos(t)],[rout*sin(t),rin*sin(t)],'r','linestyle','none');
                    pbaspect(app.UIAxes,[1 1 1]);
                end
                if strcmp(app.Switch_5.Value,'On')
                    outangle = app.InjectA_5.Value + (app.InjAngleRangeEditField_5.Value / 2);
                    inangle = app.InjectA_5.Value - (app.InjAngleRangeEditField_5.Value / 2);
                    t = linspace(0,2*pi);
                    if inangle < 0
                        if abs(inangle) > outangle
                            rin = 0;
                            rout = d * tand(abs(inangle))+r;
                        else
                            rin = 0;
                            rout = d * tand(outangle)+r;
                        end
                    else
                        rin = d * tand(inangle)-r;
                        rout = d * tand(outangle)+r;
                    end
                    patch(app.UIAxes,[rout*cos(t),rin*cos(t)],[rout*sin(t),rin*sin(t)],'r','linestyle','none');
                    pbaspect(app.UIAxes,[1 1 1]);
                end
            end
        end

        % Value changed function: CoreDiameterSlider
        function CoreDiameterSliderValueChanged(app, event)
            MMFvalue = app.CoreDiameterSlider.Value;
            app.MFDField_2.Value = MMFvalue;
        end

        % Value changed function: ModeFieldDiameterSlider
        function ModeFieldDiameterSliderValueChanged(app, event)
            MFDvalue = app.ModeFieldDiameterSlider.Value;
            app.MFDField.Value = MFDvalue;
            DLambda = app.SignalwavelengthDropDown.Value;
            if strcmp(DLambda,'850')
                Lambda = 0.850;
            elseif strcmp(DLambda,'1300')
                Lambda = 1.3;
            else
                Lambda = 1.55;
            end
            app.VEditField.Value = (2 * pi * app.MFDField.Value / 2) * (app.NAField.Value) / Lambda;
            if app.VEditField.Value > 2.405
                app.SingleModeOperationCheckLamp.Color = 'red';
            else
                app.SingleModeOperationCheckLamp.Color = [0,1,0];
            end
        end

        % Value changed function: NAField_2
        function NAField_2ValueChanged(app, event)
            MMFNFvalue = app.NAField_2.Value;
            app.NASlider_2.Value = MMFNFvalue;
        end

        % Value changed function: NASlider
        function NASliderValueChanged(app, event)
            NAvalue = app.NASlider.Value;
            app.NAField.Value = NAvalue;
            DLambda = app.SignalwavelengthDropDown.Value;
            if strcmp(DLambda,'850')
                Lambda = 0.850;
            elseif strcmp(DLambda,'1300')
                Lambda = 1.3;
            else
                Lambda = 1.55;
            end
            app.VEditField.Value = (2 * pi * app.MFDField.Value / 2) * (app.NAField.Value) / Lambda;
            if app.VEditField.Value > 2.405
                app.SingleModeOperationCheckLamp.Color = 'red';
            else
                app.SingleModeOperationCheckLamp.Color = [0,1,0];
            end
            app.ReceivingAngleEditField.Value = 2 * asind(NAvalue);
            app.BeamDiaEditField.Value = tand(app.ReceivingAngleEditField.Value) * app.fEditField.Value;
        end

        % Value changed function: NASlider_2
        function NASlider_2ValueChanged(app, event)
            MMFNAvalue = app.NASlider_2.Value;
            app.NAField_2.Value = MMFNAvalue;
            app.MaximumInjectionAngleEditField.Value = asind(MMFNAvalue);
        end

        % Value changed function: ParentFocalLengthSlider
        function ParentFocalLengthSliderValueChanged(app, event)
            prf_s_value = app.ParentFocalLengthSlider.Value;
            app.PFL.Value = prf_s_value;
            app.ReflectedFocalLengthRFLEditField.Value = (prf_s_value * 4 * prf_s_value)^(1/2);
            mirror_check_value = 4 * prf_s_value;
            if mirror_check_value < app.MirrorDiameterEditField.Value
                app.MirrorDiaCheckLamp.Color = "Red";
            end
            if mirror_check_value >= app.MirrorDiameterEditField.Value
                app.MirrorDiaCheckLamp.Color = "Green";
            end
            if strcmp(app.Switch.Value,'On')
                app.Channel1Lamp.Color = 'Yellow';
            end
            if strcmp(app.Switch_2.Value,'On')
                app.Channel2Lamp.Color = 'Yellow';
            end
            if strcmp(app.Switch_3.Value,'On')
                app.Channel3Lamp.Color = 'Yellow';
            end
            if strcmp(app.Switch_4.Value,'On')
                app.Channel4Lamp.Color = 'Yellow';
            end
            if strcmp(app.Switch_5.Value,'On')
                app.Channel5Lamp.Color = 'Yellow';
            end
        end

        % Value changed function: SignalwavelengthDropDown
        function SignalwavelengthDropDownValueChanged(app, event)
            DLambda = app.SignalwavelengthDropDown.Value;
            if strcmp(DLambda,'850')
                Lambda = 0.850;
            elseif strcmp(DLambda,'1300')
                Lambda = 1.3;
            else
                Lambda = 1.55;
            end
            app.VEditField.Value = (2 * pi * app.MFDField.Value / 2) * (app.NAField.Value) / Lambda;
            if app.VEditField.Value > 2.405
                app.SingleModeOperationCheckLamp.Color = 'red';
            else
                app.SingleModeOperationCheckLamp.Color = [0,1,0];
            end
            app.BeamDiaEditField.Value = 2 * app.fEditField.Value * Lambda / (pi * app.ModeFieldDiameterSlider.Value * 0.5);
        end

        % Value changed function: Switch
        function SwitchValueChanged(app, event)
            if strcmp(app.Switch.Value,'Off')
                app.Channel1Lamp.Color = [0,0,0];
                app.XPosition1.Value = 0;
                app.YPosition1.Value = 0;
                app.InjectA.Value = 0;
                app.Channel1InjectAngleGauge.Value = 0;
                app.InjAngleRangeEditField.Value = 0;
            else
                app.Channel1Lamp.Color = [1,1,1];
                g = app.XPosition1.Value;
                h = app.YPosition1.Value;
                f = app.PFL.Value;
                x = h + 2*f;
                y = g;
                z = (x^2)/(4*f) + (y^2)/(4*f) - f;
                app.InjectA.Value = atand((z^2+y^2)^(1/2)/x);
                d = app.BeamDiaEditField.Value / 2;
                z1 = ((x+d)^2)/(4*f) + (y^2)/(4*f) - f;
                z2 = ((x-d)^2)/(4*f) + (y^2)/(4*f) - f;
                a1 = atand(z1/x);
                a2 = atand(z2/x);
                app.Channel1InjectAngleGauge.Value = app.InjectA.Value;
                if z1>0 && z2<0
                    app.InjAngleRangeEditField.Value = a1 - a2;
                else
                    app.InjAngleRangeEditField.Value = abs(a1 - a2);
                end
            end
        end

        % Value changed function: Switch_2
        function Switch_2ValueChanged(app, event)
            if strcmp(app.Switch_2.Value,'Off')
                app.Channel2Lamp.Color = [0,0,0];
                app.XPosition1_2.Value = 0;
                app.YPosition1_2.Value = 0;
                app.InjectA_2.Value = 0;
                app.Channel2InjectAngleGauge.Value = 0;
                app.InjAngleRangeEditField_2.Value = 0;
            else
                app.Channel2Lamp.Color = [1,1,1];
                g = app.XPosition1_2.Value;
                h = app.YPosition1_2.Value;
                f = app.PFL.Value;
                x = h + 2*f;
                y = g;
                z = (x^2)/(4*f) + (y^2)/(4*f) - f;
                app.InjectA_2.Value = atand((z^2+y^2)^(1/2)/x);
                d = app.BeamDiaEditField.Value / 2;
                z1 = ((x+d)^2)/(4*f) + (y^2)/(4*f) - f;
                z2 = ((x-d)^2)/(4*f) + (y^2)/(4*f) - f;
                a1 = atand(z1/x);
                a2 = atand(z2/x);
                app.Channel2InjectAngleGauge.Value = app.InjectA_2.Value;
                if z1>0 && z2<0
                    app.InjAngleRangeEditField_2.Value = a1 - a2;
                else
                    app.InjAngleRangeEditField_2.Value = abs(a1 - a2);
                end
            end
        end

        % Value changed function: Switch_3
        function Switch_3ValueChanged(app, event)
            if strcmp(app.Switch_3.Value,'Off')
                app.Channel3Lamp.Color = [0,0,0];
                app.XPosition1_3.Value = 0;
                app.YPosition1_3.Value = 0;
                app.InjectA_3.Value = 0;
                app.Channel3InjectAngleGauge.Value = 0;
                app.InjAngleRangeEditField_3.Value = 0;
            else
                app.Channel3Lamp.Color = [1,1,1];
                g = app.XPosition1_3.Value;
                h = app.YPosition1_3.Value;
                f = app.PFL.Value;
                x = h + 2*f;
                y = g;
                z = (x^2)/(4*f) + (y^2)/(4*f) - f;
                app.InjectA_3.Value = atand((z^2+y^2)^(1/2)/x);
                d = app.BeamDiaEditField.Value / 2;
                z1 = ((x+d)^2)/(4*f) + (y^2)/(4*f) - f;
                z2 = ((x-d)^2)/(4*f) + (y^2)/(4*f) - f;
                a1 = atand(z1/x);
                a2 = atand(z2/x);
                app.Channel3InjectAngleGauge.Value = app.InjectA_3.Value;
                if z1>0 && z2<0
                    app.InjAngleRangeEditField_3.Value = a1 - a2;
                else
                    app.InjAngleRangeEditField_3.Value = abs(a1 - a2);
                end
            end
        end

        % Value changed function: Switch_4
        function Switch_4ValueChanged(app, event)
            if strcmp(app.Switch_4.Value,'Off')
                app.Channel4Lamp.Color = [0,0,0];
                app.XPosition1_4.Value = 0;
                app.YPosition1_4.Value = 0;
                app.InjectA_4.Value = 0;
                app.Channel4InjectAngleGauge.Value = 0;
                app.InjAngleRangeEditField_4.Value = 0;
            else
                app.Channel4Lamp.Color = [1,1,1];
                g = app.XPosition1_4.Value;
                h = app.YPosition1_4.Value;
                f = app.PFL.Value;
                x = h + 2*f;
                y = g;
                z = (x^2)/(4*f) + (y^2)/(4*f) - f;
                app.InjectA_3.Value = atand((z^2+y^2)^(1/2)/x);
                d = app.BeamDiaEditField.Value / 2;
                z1 = ((x+d)^2)/(4*f) + (y^2)/(4*f) - f;
                z2 = ((x-d)^2)/(4*f) + (y^2)/(4*f) - f;
                a1 = atand(z1/x);
                a2 = atand(z2/x);
                app.Channel4InjectAngleGauge.Value = app.InjectA_4.Value;
                if z1>0 && z2<0
                    app.InjAngleRangeEditField_4.Value = a1 - a2;
                else
                    app.InjAngleRangeEditField_4.Value = abs(a1 - a2);
                end
            end
        end

        % Value changed function: Switch_5
        function Switch_5ValueChanged(app, event)
            if strcmp(app.Switch_5.Value,'Off')
                app.Channel5Lamp.Color = [0,0,0];
                app.XPosition1_5.Value = 0;
                app.YPosition1_5.Value = 0;
                app.InjectA_5.Value = 0;
                app.Channel5InjectAngleGauge.Value = 0;
                app.InjAngleRangeEditField_5.Value = 0;
            else
                app.Channel5Lamp.Color = [1,1,1];
                g = app.XPosition1_5.Value;
                h = app.YPosition1_5.Value;
                f = app.PFL.Value;
                x = h + 2*f;
                y = g;
                z = (x^2)/(4*f) + (y^2)/(4*f) - f;
                app.InjectA_5.Value = atand((z^2+y^2)^(1/2)/x);
                d = app.BeamDiaEditField.Value / 2;
                z1 = ((x+d)^2)/(4*f) + (y^2)/(4*f) - f;
                z2 = ((x-d)^2)/(4*f) + (y^2)/(4*f) - f;
                a1 = atand(z1/x);
                a2 = atand(z2/x);
                app.Channel5InjectAngleGauge.Value = app.InjectA_5.Value;
                if z1>0 && z2<0
                    app.InjAngleRangeEditField_5.Value = a1 - a2;
                else
                    app.InjAngleRangeEditField_5.Value = abs(a1 - a2);
                end
            end
        end

        % Value changed function: XPosition1
        function XPosition1ValueChanged(app, event)
            if strcmp(app.Switch.Value,'On')
                g = app.XPosition1.Value;
                h = app.YPosition1.Value;
                f = app.PFL.Value;
                x = h + 2*f;
                y = g;
                z = (x^2)/(4*f) + (y^2)/(4*f) - f;
                app.InjectA.Value = atand((z^2+y^2)^(1/2)/x);
                d = app.BeamDiaEditField.Value / 2;
                z1 = ((x+d)^2)/(4*f) + (y^2)/(4*f) - f;
                z2 = ((x-d)^2)/(4*f) + (y^2)/(4*f) - f;
                a1 = atand(z1/x);
                a2 = atand(z2/x);
                app.Channel1InjectAngleGauge.Value = app.InjectA.Value;
                if z1>0 && z2<0
                    app.InjAngleRangeEditField.Value = a1 - a2;
                else
                    app.InjAngleRangeEditField.Value = abs(a1 - a2);
                end
            end
        end

        % Value changed function: XPosition1_2
        function XPosition1_2ValueChanged(app, event)
            if strcmp(app.Switch_2.Value,'On')
                g = app.XPosition1_2.Value;
                h = app.YPosition1_2.Value;
                f = app.PFL.Value;
                x = h + 2*f;
                y = g;
                z = (x^2)/(4*f) + (y^2)/(4*f) - f;
                app.InjectA_2.Value = atand((z^2+y^2)^(1/2)/x);
                d = app.BeamDiaEditField.Value / 2;
                z1 = ((x+d)^2)/(4*f) + (y^2)/(4*f) - f;
                z2 = ((x-d)^2)/(4*f) + (y^2)/(4*f) - f;
                a1 = atand(z1/x);
                a2 = atand(z2/x);
                app.Channel2InjectAngleGauge.Value = app.InjectA_2.Value;
                if z1>0 && z2<0
                    app.InjAngleRangeEditField_2.Value = a1 - a2;
                else
                    app.InjAngleRangeEditField_2.Value = abs(a1 - a2);
                end
            end
        end

        % Value changed function: XPosition1_3
        function XPosition1_3ValueChanged(app, event)
            if strcmp(app.Switch_3.Value,'On')
                g = app.XPosition1_3.Value;
                h = app.YPosition1_3.Value;
                f = app.PFL.Value;
                x = h + 2*f;
                y = g;
                z = (x^2)/(4*f) + (y^2)/(4*f) - f;
                app.InjectA_3.Value = atand((z^2+y^2)^(1/2)/x);
                d = app.BeamDiaEditField.Value / 2;
                z1 = ((x+d)^2)/(4*f) + (y^2)/(4*f) - f;
                z2 = ((x-d)^2)/(4*f) + (y^2)/(4*f) - f;
                a1 = atand(z1/x);
                a2 = atand(z2/x);
                app.Channel3InjectAngleGauge.Value = app.InjectA_3.Value;
                if z1>0 && z2<0
                    app.InjAngleRangeEditField_3.Value = a1 - a2;
                else
                    app.InjAngleRangeEditField_3.Value = abs(a1 - a2);
                end
            end
        end

        % Value changed function: XPosition1_4
        function XPosition1_4ValueChanged(app, event)
            if strcmp(app.Switch_4.Value,'On')
                g = app.XPosition1_4.Value;
                h = app.YPosition1_4.Value;
                f = app.PFL.Value;
                x = h + 2*f;
                y = g;
                z = (x^2)/(4*f) + (y^2)/(4*f) - f;
                app.InjectA_4.Value = atand((z^2+y^2)^(1/2)/x);
                d = app.BeamDiaEditField.Value / 2;
                z1 = ((x+d)^2)/(4*f) + (y^2)/(4*f) - f;
                z2 = ((x-d)^2)/(4*f) + (y^2)/(4*f) - f;
                a1 = atand(z1/x);
                a2 = atand(z2/x);
                app.Channel4InjectAngleGauge.Value = app.InjectA_4.Value;
                if z1>0 && z2<0
                    app.InjAngleRangeEditField_4.Value = a1 - a2;
                else
                    app.InjAngleRangeEditField_4.Value = abs(a1 - a2);
                end
            end
        end

        % Value changed function: XPosition1_5
        function XPosition1_5ValueChanged(app, event)
            if strcmp(app.Switch_5.Value,'On')
                g = app.XPosition1_5.Value;
                h = app.YPosition1_5.Value;
                f = app.PFL.Value;
                x = h + 2*f;
                y = g;
                z = (x^2)/(4*f) + (y^2)/(4*f) - f;
                app.InjectA_5.Value = atand((z^2+y^2)^(1/2)/x);
                d = app.BeamDiaEditField.Value / 2;
                z1 = ((x+d)^2)/(4*f) + (y^2)/(4*f) - f;
                z2 = ((x-d)^2)/(4*f) + (y^2)/(4*f) - f;
                a1 = atand(z1/x);
                a2 = atand(z2/x);
                app.Channel5InjectAngleGauge.Value = app.InjectA_5.Value;
                if z1>0 && z2<0
                    app.InjAngleRangeEditField_5.Value = a1 - a2;
                else
                    app.InjAngleRangeEditField_5.Value = abs(a1 - a2);
                end
            end
        end

        % Value changed function: YPosition1
        function YPosition1ValueChanged(app, event)
            if strcmp(app.Switch.Value,'On')
                g = app.XPosition1.Value;
                h = app.YPosition1.Value;
                f = app.PFL.Value;
                x = h + 2*f;
                y = g;
                z = (x^2)/(4*f) + (y^2)/(4*f) - f;
                app.InjectA.Value = atand((z^2+y^2)^(1/2)/x);
                d = app.BeamDiaEditField.Value / 2;
                z1 = ((x+d)^2)/(4*f) + (y^2)/(4*f) - f;
                z2 = ((x-d)^2)/(4*f) + (y^2)/(4*f) - f;
                a1 = atand(z1/x);
                a2 = atand(z2/x);
                app.Channel1InjectAngleGauge.Value = app.InjectA.Value;
                if z1>0 && z2<0
                    app.InjAngleRangeEditField.Value = a1 - a2;
                else
                    app.InjAngleRangeEditField.Value = abs(a1 - a2);
                end
            end
        end

        % Value changed function: YPosition1_2
        function YPosition1_2ValueChanged(app, event)
            if strcmp(app.Switch_2.Value,'On')
                g = app.XPosition1_2.Value;
                h = app.YPosition1_2.Value;
                f = app.PFL.Value;
                x = h + 2*f;
                y = g;
                z = (x^2)/(4*f) + (y^2)/(4*f) - f;
                app.InjectA_2.Value = atand((z^2+y^2)^(1/2)/x);
                d = app.BeamDiaEditField.Value / 2;
                z1 = ((x+d)^2)/(4*f) + (y^2)/(4*f) - f;
                z2 = ((x-d)^2)/(4*f) + (y^2)/(4*f) - f;
                a1 = atand(z1/x);
                a2 = atand(z2/x);
                app.Channel2InjectAngleGauge.Value = app.InjectA_2.Value;
                if z1>0 && z2<0
                    app.InjAngleRangeEditField_2.Value = a1 + a2;
                else
                    app.InjAngleRangeEditField_2.Value = abs(a1 - a2);
                end
            end
        end

        % Value changed function: YPosition1_3
        function YPosition1_3ValueChanged(app, event)
            if strcmp(app.Switch_3.Value,'On')
                g = app.XPosition1_3.Value;
                h = app.YPosition1_3.Value;
                f = app.PFL.Value;
                x = h + 2*f;
                y = g;
                z = (x^2)/(4*f) + (y^2)/(4*f) - f;
                app.InjectA_3.Value = atand((z^2+y^2)^(1/2)/x);
                d = app.BeamDiaEditField.Value / 2;
                z1 = ((x+d)^2)/(4*f) + (y^2)/(4*f) - f;
                z2 = ((x-d)^2)/(4*f) + (y^2)/(4*f) - f;
                a1 = atand(z1/x);
                a2 = atand(z2/x);
                app.Channel3InjectAngleGauge.Value = app.InjectA_3.Value;
                if z1>0 && z2<0
                    app.InjAngleRangeEditField_3.Value = a1 - a2;
                else
                    app.InjAngleRangeEditField_3.Value = abs(a1 - a2);
                end
            end
        end

        % Value changed function: YPosition1_4
        function YPosition1_4ValueChanged(app, event)
            if strcmp(app.Switch_4.Value,'On')
                g = app.XPosition1_4.Value;
                h = app.YPosition1_4.Value;
                f = app.PFL.Value;
                x = h + 2*f;
                y = g;
                z = (x^2)/(4*f) + (y^2)/(4*f) - f;
                app.InjectA_4.Value = atand((z^2+y^2)^(1/2)/x);
                d = app.BeamDiaEditField.Value / 2;
                z1 = ((x+d)^2)/(4*f) + (y^2)/(4*f) - f;
                z2 = ((x-d)^2)/(4*f) + (y^2)/(4*f) - f;
                a1 = atand(z1/x);
                a2 = atand(z2/x);
                app.Channel4InjectAngleGauge.Value = app.InjectA_4.Value;
                if z1>0 && z2<0
                    app.InjAngleRangeEditField_4.Value = a1 - a2;
                else
                    app.InjAngleRangeEditField_4.Value = abs(a1 - a2);
                end
            end
        end

        % Value changed function: YPosition1_5
        function YPosition1_5ValueChanged(app, event)
            if strcmp(app.Switch_5.Value,'On')
                g = app.XPosition1_5.Value;
                h = app.YPosition1_5.Value;
                f = app.PFL.Value;
                x = h + 2*f;
                y = g;
                z = (x^2)/(4*f) + (y^2)/(4*f) - f;
                app.InjectA_5.Value = atand((z^2+y^2)^(1/2)/x);
                d = app.BeamDiaEditField.Value / 2;
                z1 = ((x+d)^2)/(4*f) + (y^2)/(4*f) - f;
                z2 = ((x-d)^2)/(4*f) + (y^2)/(4*f) - f;
                a1 = atand(z1/x);
                a2 = atand(z2/x);
                app.Channel5InjectAngleGauge.Value = app.InjectA_5.Value;
                if z1>0 && z2<0
                    app.InjAngleRangeEditField_5.Value = a1 - a2;
                else
                    app.InjAngleRangeEditField_5.Value = abs(a1 - a2);
                end
            end
        end

        % Value changed function: fEditField
        function fEditFieldValueChanged(app, event)
            fvalue = app.fEditField.Value;
            app.BeamDiaEditField.Value = fvalue * 2 * tand(app.ReceivingAngleEditField.Value * 0.5);
            if strcmp(app.Switch.Value,'On')
                app.Channel1Lamp.Color = 'Yellow';
            end
            if strcmp(app.Switch_2.Value,'On')
                app.Channel2Lamp.Color = 'Yellow';
            end
            if strcmp(app.Switch_3.Value,'On')
                app.Channel3Lamp.Color = 'Yellow';
            end
            if strcmp(app.Switch_4.Value,'On')
                app.Channel4Lamp.Color = 'Yellow';
            end
            if strcmp(app.Switch_5.Value,'On')
                app.Channel5Lamp.Color = 'Yellow';
            end
        end

        % Value changed function: MirrorDiameterEditField
        function MirrorDiameterEditFieldValueChanged(app, event)
            MirrorDiametervalue = app.MirrorDiameterEditField.Value / 2;
            prf_s_value = app.ParentFocalLengthSlider.Value;
            mirror_check_value = 4 * prf_s_value;
            if mirror_check_value < MirrorDiametervalue
                app.MirrorDiaCheckLamp.Color = "Red";
            end
            if mirror_check_value > app.HousingDiaEditField.Value
                app.MirrorDiaCheckLamp.Color = "Red";
            end
            if mirror_check_value >= MirrorDiametervalue
                app.MirrorDiaCheckLamp.Color = "Green";
            end
            if strcmp(app.Switch.Value,'On')
                app.Channel1Lamp.Color = 'Yellow';
            end
            if strcmp(app.Switch_2.Value,'On')
                app.Channel2Lamp.Color = 'Yellow';
            end
            if strcmp(app.Switch_3.Value,'On')
                app.Channel3Lamp.Color = 'Yellow';
            end
            if strcmp(app.Switch_4.Value,'On')
                app.Channel4Lamp.Color = 'Yellow';
            end
            if strcmp(app.Switch_5.Value,'On')
                app.Channel5Lamp.Color = 'Yellow';
            end
        end

        % Button pushed function: SystemCheckButton
        function SystemCheckButtonPushed(app, event)
            checksum = 0;
            channel = 0;
            C1 = 1;
            C2 = 1;
            C3 = 1;
            C4 = 1;
            C5 = 1;
            cla(app.UIAxes);
            app.SystemCheckLamp.Color = 'Black';
            app.SystemStatusLamp.Color = 'Black';
            app.SystemStatusLamp_2.Color = 'Black';
            app.ChannelStatusLamp.Color = 'Black';
            app.ChannelStatusLamp_3.Color = 'Black';
            app.ChannelStatusLamp_4.Color = 'Black';
            app.ChannelStatusLamp_5.Color = 'Black';
            app.ChannelStatusLamp_2.Color = 'Black';
            app.Image2.Enable = 'off';
            app.ClockwiseLabel.Enable = 'off';
            app.Image2_2.Enable = 'off';
            app.CounterclockwiseLabel.Enable = 'off';
            app.Image2_5.Enable = 'off';
            app.ClockwiseLabel_3.Enable = 'off';
            app.Image2_6.Enable = 'off';
            app.CounterclockwiseLabel_3.Enable = 'off';
            app.Image2_7.Enable = 'off';
            app.ClockwiseLabel_4.Enable = 'off';
            app.Image2_8.Enable = 'off';
            app.CounterclockwiseLabel_4.Enable = 'off';
            app.Image2_9.Enable = 'off';
            app.ClockwiseLabel_5.Enable = 'off';
            app.Image2_10.Enable = 'off';
            app.CounterclockwiseLabel_5.Enable = 'off';
            app.Image2_3.Enable = 'off';
            app.ClockwiseLabel_2.Enable = 'off';
            app.Image2_4.Enable = 'off';
            app.CounterclockwiseLabel_2.Enable = 'off';
            if strcmp(app.Switch.Value,'On')
                channel = channel + 1;
                app.Channel1Lamp.Color = 'Green';
                C1 = 0;
                if (app.XPosition1.Value^2 + app.YPosition1.Value^2 - (app.BeamDiaEditField.Value/2)) > (app.MirrorDiameterEditField.Value / 2)^2
                    app.Channel1Lamp.Color = 'cyan';
                    checksum = checksum + 1;
                    C1 = 1;
                end
                if app.InjectA.Value > app.MaximumInjectionAngleEditField.Value
                    checksum = checksum + 1;
                    C1 = 1;
                    app.Channel1Lamp.Color = 'magenta';
                end
                if strcmp(app.Switch_2.Value,'On')
                    if (app.HousingDiaEditField.Value)^2 > ((app.XPosition1_2.Value - app.XPosition1.Value)^2 + (app.YPosition1_2.Value - app.YPosition1.Value)^2)
                        app.Channel1Lamp.Color = '#D95319';
                        app.Channel2Lamp.Color = '#D95319';
                        checksum = checksum + 1;
                        C1 = 1;
                    end
                end
                if strcmp(app.Switch_3.Value,'On')
                    if (app.HousingDiaEditField.Value)^2 > ((app.XPosition1_3.Value - app.XPosition1.Value)^2 + (app.YPosition1_3.Value - app.YPosition1.Value)^2)
                        app.Channel1Lamp.Color = '#D95319';
                        app.Channel3Lamp.Color = '#D95319';
                        checksum = checksum + 1;
                        C1 = 1;
                    end
                end
                if strcmp(app.Switch_4.Value,'On')
                    if (app.HousingDiaEditField.Value)^2 > ((app.XPosition1_4.Value - app.XPosition1.Value)^2 + (app.YPosition1_4.Value - app.YPosition1.Value)^2)
                        app.Channel1Lamp.Color = '#D95319';
                        app.Channel4Lamp.Color = '#D95319';
                        checksum = checksum + 1;
                        C1 = 1;
                    end
                end
                if strcmp(app.Switch_5.Value,'On')
                    if (app.HousingDiaEditField.Value)^2 > ((app.XPosition1_5.Value - app.XPosition1.Value)^2 + (app.YPosition1_5.Value - app.YPosition1.Value)^2)
                        app.Channel1Lamp.Color = '#D95319';
                        app.Channel5Lamp.Color = '#D95319';
                        checksum = checksum + 1;
                        C1 = 1;
                    end
                end
            end
            if strcmp(app.Switch_2.Value,'On')
                channel = channel + 1;
                app.Channel2Lamp.Color = 'Green';
                C2 = 0;
                if (app.XPosition1_2.Value^2 + app.YPosition1_2.Value^2 - (app.BeamDiaEditField.Value/2)) > (app.MirrorDiameterEditField.Value / 2)^2
                    app.Channel2Lamp.Color = 'cyan';
                    checksum = checksum + 1;
                    C2 = 1;
                end
                if app.InjectA_2.Value > app.MaximumInjectionAngleEditField.Value
                    checksum = checksum + 1;
                    C2 = 1;
                    app.Channel2Lamp.Color = 'magenta';
                end
                if strcmp(app.Switch.Value,'On')
                    if (app.HousingDiaEditField.Value)^2 > ((app.XPosition1.Value - app.XPosition1_2.Value)^2 + (app.YPosition1.Value - app.YPosition1_2.Value)^2)
                        app.Channel1Lamp.Color = '#D95319';
                        app.Channel2Lamp.Color = '#D95319';
                        checksum = checksum + 1;
                        C2 = 1;
                    end
                end
                if strcmp(app.Switch_3.Value,'On')
                    if (app.HousingDiaEditField.Value)^2 > ((app.XPosition1_3.Value - app.XPosition1_2.Value)^2 + (app.YPosition1_3.Value - app.YPosition1_2.Value)^2)
                        app.Channel2Lamp.Color = '#D95319';
                        app.Channel3Lamp.Color = '#D95319';
                        checksum = checksum + 1;
                        C2 = 1;
                    end
                end
                if strcmp(app.Switch_4.Value,'On')
                    if (app.HousingDiaEditField.Value)^2 > ((app.XPosition1_4.Value - app.XPosition1_2.Value)^2 + (app.YPosition1_4.Value - app.YPosition1_2.Value)^2)
                        app.Channel2Lamp.Color = '#D95319';
                        app.Channel4Lamp.Color = '#D95319';
                        checksum = checksum + 1;
                        C2 = 1;
                    end
                end
                if strcmp(app.Switch_5.Value,'On')
                    if (app.HousingDiaEditField.Value)^2 > ((app.XPosition1_5.Value - app.XPosition1_2.Value)^2 + (app.YPosition1_5.Value - app.YPosition1_2.Value)^2)
                        app.Channel2Lamp.Color = '#D95319';
                        app.Channel5Lamp.Color = '#D95319';
                        checksum = checksum + 1;
                        C2 = 1;
                    end
                end
            end
            if strcmp(app.Switch_3.Value,'On')
                channel = channel + 1;
                app.Channel3Lamp.Color = 'Green';
                C3 = 0;
                if (app.XPosition1_3.Value^2 + app.YPosition1_3.Value^2 - (app.BeamDiaEditField.Value/2)) > (app.MirrorDiameterEditField.Value / 2)^2
                    app.Channel3Lamp.Color = 'cyan';
                    checksum = checksum + 1;
                    C3 = 1;
                end
                if app.InjectA_4.Value > app.MaximumInjectionAngleEditField.Value
                    checksum = checksum + 1;
                    C3 = 1;
                    app.Channel3Lamp.Color = 'magenta';
                end
                if strcmp(app.Switch.Value,'On')
                    if (app.HousingDiaEditField.Value)^2 > ((app.XPosition1.Value - app.XPosition1_3.Value)^2 + (app.YPosition1.Value - app.YPosition1_3.Value)^2)
                        app.Channel1Lamp.Color = '#D95319';
                        app.Channel3Lamp.Color = '#D95319';
                        checksum = checksum + 1;
                        C3 = 1;
                    end
                end
                if strcmp(app.Switch_2.Value,'On')
                    if (app.HousingDiaEditField.Value)^2 > ((app.XPosition1_2.Value - app.XPosition1_3.Value)^2 + (app.YPosition1_2.Value - app.YPosition1_3.Value)^2)
                        app.Channel2Lamp.Color = '#D95319';
                        app.Channel3Lamp.Color = '#D95319';
                        checksum = checksum + 1;
                        C3 = 1;
                    end
                end
                if strcmp(app.Switch_4.Value,'On')
                    if (app.HousingDiaEditField.Value)^2 > ((app.XPosition1_4.Value - app.XPosition1_3.Value)^2 + (app.YPosition1_4.Value - app.YPosition1_3.Value)^2)
                        app.Channel3Lamp.Color = '#D95319';
                        app.Channel4Lamp.Color = '#D95319';
                        checksum = checksum + 1;
                        C3 = 1;
                    end
                end
                if strcmp(app.Switch_5.Value,'On')
                    if (app.HousingDiaEditField.Value)^2 > ((app.XPosition1_5.Value - app.XPosition1_3.Value)^2 + (app.YPosition1_5.Value - app.YPosition1_3.Value)^2)
                        app.Channel3Lamp.Color = '#D95319';
                        app.Channel5Lamp.Color = '#D95319';
                        checksum = checksum + 1;
                        C3 = 1;
                    end
                end
            end
            if strcmp(app.Switch_4.Value,'On')
                channel = channel + 1;
                app.Channel4Lamp.Color = 'Green';
                C4 = 0;
                if (app.XPosition1_4.Value^2 + app.YPosition1_4.Value^2 - (app.BeamDiaEditField.Value/2)) > (app.MirrorDiameterEditField.Value / 2)^2
                    app.Channel4Lamp.Color = 'cyan';
                    checksum = checksum + 1;
                    C4 = 1;
                end
                if app.InjectA_4.Value > app.MaximumInjectionAngleEditField.Value
                    checksum = checksum + 1;
                    app.Channel4Lamp.Color = 'magenta';
                    C4 = 1;
                end
                if strcmp(app.Switch.Value,'On')
                    if (app.HousingDiaEditField.Value)^2 > ((app.XPosition1.Value - app.XPosition1_4.Value)^2 + (app.YPosition1.Value - app.YPosition1_4.Value)^2)
                        app.Channel1Lamp.Color = '#D95319';
                        app.Channel4Lamp.Color = '#D95319';
                        checksum = checksum + 1;
                        C4 = 1;
                    end
                end
                if strcmp(app.Switch_2.Value,'On')
                    if (app.HousingDiaEditField.Value)^2 > ((app.XPosition1_2.Value - app.XPosition1_4.Value)^2 + (app.YPosition1_2.Value - app.YPosition1_4.Value)^2)
                        app.Channel2Lamp.Color = '#D95319';
                        app.Channel4Lamp.Color = '#D95319';
                        checksum = checksum + 1;
                        C4 = 1;
                    end
                end
                if strcmp(app.Switch_3.Value,'On')
                    if (app.HousingDiaEditField.Value)^2 > ((app.XPosition1_3.Value - app.XPosition1_4.Value)^2 + (app.YPosition1_3.Value - app.YPosition1_4.Value)^2)
                        app.Channel3Lamp.Color = '#D95319';
                        app.Channel4Lamp.Color = '#D95319';
                        checksum = checksum + 1;
                        C4 = 1;
                    end
                end
                if strcmp(app.Switch_5.Value,'On')
                    if (app.HousingDiaEditField.Value)^2 > ((app.XPosition1_5.Value - app.XPosition1_4.Value)^2 + (app.YPosition1_5.Value - app.YPosition1_4.Value)^2)
                        app.Channel4Lamp.Color = '#D95319';
                        app.Channel5Lamp.Color = '#D95319';
                        checksum = checksum + 1;
                        C4 = 1;
                    end
                end
            end
            if strcmp(app.Switch_5.Value,'On')
                channel = channel + 1;
                app.Channel5Lamp.Color = 'Green';
                C5 = 0;
                if (app.XPosition1_5.Value^2 + app.YPosition1_5.Value^2 - (app.BeamDiaEditField.Value/2)) > (app.MirrorDiameterEditField.Value / 2)^2
                    app.Channel5Lamp.Color = 'cyan';
                    checksum = checksum + 1;
                    C5 = 1;
                end
                if app.InjectA_5.Value > app.MaximumInjectionAngleEditField.Value
                    checksum = checksum + 1;
                    C5 = 1;
                    app.Channel5Lamp.Color = 'magenta';
                end
                if strcmp(app.Switch.Value,'On')
                    if (app.HousingDiaEditField.Value)^2 > ((app.XPosition1.Value - app.XPosition1_5.Value)^2 + (app.YPosition1.Value - app.YPosition1_5.Value)^2)
                        app.Channel1Lamp.Color = '#D95319';
                        app.Channel5Lamp.Color = '#D95319';
                        checksum = checksum + 1;
                        C5 = 1;
                    end
                end
                if strcmp(app.Switch_2.Value,'On')
                    if (app.HousingDiaEditField.Value)^2 > ((app.XPosition1_2.Value - app.XPosition1_5.Value)^2 + (app.YPosition1_2.Value - app.YPosition1_5.Value)^2)
                        app.Channel2Lamp.Color = '#D95319';
                        app.Channel5Lamp.Color = '#D95319';
                        checksum = checksum + 1;
                        C5 = 1;
                    end
                end
                if strcmp(app.Switch_3.Value,'On')
                    if (app.HousingDiaEditField.Value)^2 > ((app.XPosition1_3.Value - app.XPosition1_5.Value)^2 + (app.YPosition1_3.Value - app.YPosition1_5.Value)^2)
                        app.Channel3Lamp.Color = '#D95319';
                        app.Channel5Lamp.Color = '#D95319';
                        checksum = checksum + 1;
                        C5 = 1;
                    end
                end
                if strcmp(app.Switch_4.Value,'On')
                    if (app.HousingDiaEditField.Value)^2 > ((app.XPosition1_4.Value - app.XPosition1_5.Value)^2 + (app.YPosition1_4.Value - app.YPosition1_5.Value)^2)
                        app.Channel4Lamp.Color = '#D95319';
                        app.Channel5Lamp.Color = '#D95319';
                        checksum = checksum + 1;
                        C5 = 1;
                    end
                end
            end
            SMOCcolor = app.SingleModeOperationCheckLamp.Color;
            Red = [1 0 0];
            MDCcolor = app.MirrorDiaCheckLamp.Color;
            if isequal(SMOCcolor,Red) == 1
                checksum = checksum + 1;
            end
            if isequal(MDCcolor,Red) == 1
                checksum = checksum + 1;
            end
            if channel == 0
                checksum = checksum + 1;
            end
            if checksum == 0
                app.SystemCheckLamp.Color = 'Green';
                app.SystemStatusLamp.Color = 'Green';
                app.SystemStatusLamp_2.Color = 'Green';
                if C1 == 0
                    app.ChannelStatusLamp.Color = 'White';
                end
                if C2 == 0
                    app.ChannelStatusLamp_2.Color = 'White';
                end
                if C3 == 0
                    app.ChannelStatusLamp_3.Color = 'White';
                end
                if C4 == 0
                    app.ChannelStatusLamp_4.Color = 'White';
                end
                if C5 == 0
                    app.ChannelStatusLamp_5.Color = 'White';
                end
            else
                app.SystemCheckLamp.Color = 'Red';
                app.SystemStatusLamp.Color = 'Red';
                app.SystemStatusLamp_2.Color = 'Red';
                app.ChannelStatusLamp.Color = 'Red';
                app.ChannelStatusLamp_3.Color = 'Red';
                app.ChannelStatusLamp_4.Color = 'Red';
                app.ChannelStatusLamp_5.Color = 'Red';
                app.ChannelStatusLamp_2.Color = 'Red';
            end
        end

        % Value changed function: ScreenDistancemmSlider
        function ScreenDistancemmSliderValueChanged(app, event)
            ScreenDistancemmSlidervalue = app.ScreenDistancemmSlider.Value;
            app.ScreenDistanceEditField.Value = ScreenDistancemmSlidervalue;
        end

        % Value changed function: ScreenDistanceEditField
        function ScreenDistanceEditFieldValueChanged(app, event)
            ScreenDistancevalue = app.ScreenDistanceEditField.Value;
            app.ScreenDistancemmSlider.Value = ScreenDistancevalue;
        end

        % Button pushed function: CalculateRotationDirectionButton
        function CalculateRotationDirectionButtonPushed(app, event)
            % system reset
            app.Image2.Enable = 'off';
            app.ClockwiseLabel.Enable = 'off';
            app.Image2_2.Enable = 'off';
            app.CounterclockwiseLabel.Enable = 'off';
            app.Image2_5.Enable = 'off';
            app.ClockwiseLabel_3.Enable = 'off';
            app.Image2_6.Enable = 'off';
            app.CounterclockwiseLabel_3.Enable = 'off';
            app.Image2_7.Enable = 'off';
            app.ClockwiseLabel_4.Enable = 'off';
            app.Image2_8.Enable = 'off';
            app.CounterclockwiseLabel_4.Enable = 'off';
            app.Image2_9.Enable = 'off';
            app.ClockwiseLabel_5.Enable = 'off';
            app.Image2_10.Enable = 'off';
            app.CounterclockwiseLabel_5.Enable = 'off';
            app.Image2_3.Enable = 'off';
            app.ClockwiseLabel_2.Enable = 'off';
            app.Image2_4.Enable = 'off';
            app.CounterclockwiseLabel_2.Enable = 'off';
            White = [1 1 1];
            Green = [0 1 0];
            Yellow = [1 1 0];
            OAMCC1 = app.ChannelStatusLamp.Color;
            OAMCC3 = app.ChannelStatusLamp_3.Color;
            OAMCC4 = app.ChannelStatusLamp_4.Color;
            OAMCC5 = app.ChannelStatusLamp_5.Color;
            OAMCC2 = app.ChannelStatusLamp_2.Color;
            if isequal(OAMCC1,Green) == 1||isequal(OAMCC1,Yellow) == 1
                app.ChannelStatusLamp.Color = 'White';
            end
            if isequal(OAMCC2,Green) == 1||isequal(OAMCC2,Yellow) == 1
                app.ChannelStatusLamp_2.Color = 'White';
            end
            if isequal(OAMCC3,Green) == 1||isequal(OAMCC3,Yellow) == 1
                app.ChannelStatusLamp_3.Color = 'White';
            end
            if isequal(OAMCC4,Green) == 1||isequal(OAMCC4,Yellow) == 1
                app.ChannelStatusLamp_4.Color = 'White';
            end
            if isequal(OAMCC5,Green) == 1||isequal(OAMCC5,Yellow) == 1
                app.ChannelStatusLamp_5.Color = 'White';
            end
            OAMCC1 = app.ChannelStatusLamp.Color;
            OAMCC3 = app.ChannelStatusLamp_3.Color;
            OAMCC4 = app.ChannelStatusLamp_4.Color;
            OAMCC5 = app.ChannelStatusLamp_5.Color;
            OAMCC2 = app.ChannelStatusLamp_2.Color;
            % calculation start
            OAMSSL = app.SystemStatusLamp.Color;
            if isequal(Green,OAMSSL) == 1
                % Channel 1
                if isequal(White,OAMCC1) == 1
                    g = app.XPosition1.Value;
                    h = app.YPosition1.Value;
                    f = app.PFL.Value;
                    x = h + 2*f;
                    y = g;
                    z = (x^2)/(4*f) + (y^2)/(4*f) - f;
                    % No changing carrier fier position
                    if isequal(app.XAxismSlider.Value,0) && isequal(app.YAxismSlider.Value,0)
                        app.ChannelStatusLamp.Color = 'Yellow';
                        %Inject angle is 0
                    elseif y == 0
                        if z < 0
                            if app.XAxismSlider.Value > 0
                                app.ChannelStatusLamp.Color = 'Green';
                                app.Image2_2.Enable = 'on';
                                app.CounterclockwiseLabel.Enable = 'on';
                            elseif app.XAxismSlider.Value < 0
                                app.ChannelStatusLamp.Color = 'Green';
                                app.Image2.Enable = 'on';
                                app.ClockwiseLabel.Enable = 'on';
                            elseif app.XAxismSlider.Value == 0
                                app.ChannelStatusLamp.Color = 'Yellow';
                            end
                        end
                        if z > 0
                            if app.XAxismSlider.Value < 0
                                app.ChannelStatusLamp.Color = 'Green';
                                app.Image2_2.Enable = 'on';
                                app.CounterclockwiseLabel.Enable = 'on';
                            elseif app.XAxismSlider.Value > 0
                                app.ChannelStatusLamp.Color = 'Green';
                                app.Image2.Enable = 'on';
                                app.ClockwiseLabel.Enable = 'on';
                            elseif app.XAxismSlider.Value == 0
                                app.ChannelStatusLamp.Color = 'Yellow';
                            end
                        end
                        if z ==0
                            app.ChannelStatusLamp.Color = 'Yellow';
                        end
                    elseif y < 0
                        Y3 = (z/y) * app.XAxismSlider.Value;
                        if app.YAxismSlider.Value > Y3
                            app.ChannelStatusLamp.Color = 'Green';
                            app.Image2_2.Enable = 'on';
                            app.CounterclockwiseLabel.Enable = 'on';
                        elseif app.YAxismSlider.Value < Y3
                            app.ChannelStatusLamp.Color = 'Green';
                            app.Image2.Enable = 'on';
                            app.ClockwiseLabel.Enable = 'on';
                        elseif aapp.YAxismSlider.Value == Y3
                            app.ChannelStatusLamp.Color = 'Yellow';
                        end
                    elseif y > 0
                        Y3 = (z/y) * app.XAxismSlider.Value;
                        if app.YAxismSlider.Value < Y3
                            app.ChannelStatusLamp.Color = 'Green';
                            app.Image2_2.Enable = 'on';
                            app.CounterclockwiseLabel.Enable = 'on';
                        elseif app.YAxismSlider.Value > Y3
                            app.ChannelStatusLamp.Color = 'Green';
                            app.Image2.Enable = 'on';
                            app.ClockwiseLabel.Enable = 'on';
                        elseif aapp.YAxismSlider.Value == Y3
                            app.ChannelStatusLamp.Color = 'Yellow';
                        end
                    end
                end
                % Channel 1 End
                % Channel 2
                if isequal(White,OAMCC2) == 1
                    g = app.XPosition1_2.Value;
                    h = app.YPosition1_2.Value;
                    f = app.PFL.Value;
                    x = h + 2*f;
                    y = g;
                    z = (x^2)/(4*f) + (y^2)/(4*f) - f;
                    % No changing carrier fier position
                    if isequal(app.XAxismSlider.Value,0) && isequal(app.YAxismSlider.Value,0)
                        app.ChannelStatusLamp_2.Color = 'Yellow';
                        %Inject angle is 0
                    elseif y == 0
                        if z < 0
                            if app.XAxismSlider.Value > 0
                                app.ChannelStatusLamp_2.Color = 'Green';
                                app.Image2_4.Enable = 'on';
                                app.CounterclockwiseLabel_2.Enable = 'on';
                            elseif app.XAxismSlider.Value < 0
                                app.ChannelStatusLamp_2.Color = 'Green';
                                app.Image2_3.Enable = 'on';
                                app.ClockwiseLabel_2.Enable = 'on';
                            elseif app.XAxismSlider.Value == 0
                                app.ChannelStatusLamp_2.Color = 'Yellow';
                            end
                        end
                        if z > 0
                            if app.XAxismSlider.Value < 0
                                app.ChannelStatusLamp_2.Color = 'Green';
                                app.Image2_4.Enable = 'on';
                                app.CounterclockwiseLabel_2.Enable = 'on';
                            elseif app.XAxismSlider.Value > 0
                                app.ChannelStatusLamp_2.Color = 'Green';
                                app.Image2_3.Enable = 'on';
                                app.ClockwiseLabel_2.Enable = 'on';
                            elseif app.XAxismSlider.Value == 0
                                app.ChannelStatusLamp_2.Color = 'Yellow';
                            end
                        end
                        if z ==0
                            app.ChannelStatusLamp_2.Color = 'Yellow';
                        end
                    elseif y < 0
                        Y3 = (z/y) * app.XAxismSlider.Value;
                        if app.YAxismSlider.Value > Y3
                            app.ChannelStatusLamp_2.Color = 'Green';
                            app.Image2_4.Enable = 'on';
                            app.CounterclockwiseLabel_2.Enable = 'on';
                        elseif app.YAxismSlider.Value < Y3
                            app.ChannelStatusLamp_2.Color = 'Green';
                            app.Image2_3.Enable = 'on';
                            app.ClockwiseLabel_2.Enable = 'on';
                        elseif aapp.YAxismSlider.Value == Y3
                            app.ChannelStatusLamp_2.Color = 'Yellow';
                        end
                    elseif y > 0
                        Y3 = (z/y) * app.XAxismSlider.Value;
                        if app.YAxismSlider.Value < Y3
                            app.ChannelStatusLamp_2.Color = 'Green';
                            app.Image2_4.Enable = 'on';
                            app.CounterclockwiseLabel_2.Enable = 'on';
                        elseif app.YAxismSlider.Value > Y3
                            app.ChannelStatusLamp_2.Color = 'Green';
                            app.Image2_3.Enable = 'on';
                            app.ClockwiseLabel_2.Enable = 'on';
                        elseif aapp.YAxismSlider.Value == Y3
                            app.ChannelStatusLamp_2.Color = 'Yellow';
                        end
                    end
                end
                % Channel 2 End
                % Channel 3
                if isequal(White,OAMCC3) == 1
                    g = app.XPosition1_3.Value;
                    h = app.YPosition1_3.Value;
                    f = app.PFL.Value;
                    x = h + 2*f;
                    y = g;
                    z = (x^2)/(4*f) + (y^2)/(4*f) - f;
                    % No changing carrier fier position
                    if isequal(app.XAxismSlider.Value,0) && isequal(app.YAxismSlider.Value,0)
                        app.ChannelStatusLamp_3.Color = 'Yellow';
                        %Inject angle is 0
                    elseif y == 0
                        if z < 0
                            if app.XAxismSlider.Value > 0
                                app.ChannelStatusLamp_3.Color = 'Green';
                                app.Image2_6.Enable = 'on';
                                app.CounterclockwiseLabel_3.Enable = 'on';
                            elseif app.XAxismSlider.Value < 0
                                app.ChannelStatusLamp_3.Color = 'Green';
                                app.Image2_5.Enable = 'on';
                                app.ClockwiseLabel_3.Enable = 'on';
                            elseif app.XAxismSlider.Value == 0
                                app.ChannelStatusLamp_3.Color = 'Yellow';
                            end
                        end
                        if z > 0
                            if app.XAxismSlider.Value < 0
                                app.ChannelStatusLamp_3.Color = 'Green';
                                app.Image2_6.Enable = 'on';
                                app.CounterclockwiseLabel_3.Enable = 'on';
                            elseif app.XAxismSlider.Value > 0
                                app.ChannelStatusLamp_3.Color = 'Green';
                                app.Image2_5.Enable = 'on';
                                app.ClockwiseLabel_3.Enable = 'on';
                            elseif app.XAxismSlider.Value == 0
                                app.ChannelStatusLamp_3.Color = 'Yellow';
                            end
                        end
                        if z ==0
                            app.ChannelStatusLamp_3.Color = 'Yellow';
                        end
                    elseif y < 0
                        Y3 = (z/y) * app.XAxismSlider.Value;
                        if app.YAxismSlider.Value > Y3
                            app.ChannelStatusLamp_3.Color = 'Green';
                            app.Image2_6.Enable = 'on';
                            app.CounterclockwiseLabel_3.Enable = 'on';
                        elseif app.YAxismSlider.Value < Y3
                            app.ChannelStatusLamp_3.Color = 'Green';
                            app.Image2_5.Enable = 'on';
                            app.ClockwiseLabel_3.Enable = 'on';
                        elseif aapp.YAxismSlider.Value == Y3
                            app.ChannelStatusLamp_3.Color = 'Yellow';
                        end
                    elseif y > 0
                        Y3 = (z/y) * app.XAxismSlider.Value;
                        if app.YAxismSlider.Value < Y3
                            app.ChannelStatusLamp_3.Color = 'Green';
                            app.Image2_6.Enable = 'on';
                            app.CounterclockwiseLabel_3 = 'on';
                        elseif app.YAxismSlider.Value > Y3
                            app.ChannelStatusLamp_3.Color = 'Green';
                            app.Image2_5.Enable = 'on';
                            app.ClockwiseLabel_3.Enable = 'on';
                        elseif aapp.YAxismSlider.Value == Y3
                            app.ChannelStatusLamp_3.Color = 'Yellow';
                        end
                    end
                end
                % Channel 3 End
                % Channel 4
                if isequal(White,OAMCC4) == 1
                    g = app.XPosition1_4.Value;
                    h = app.YPosition1_4.Value;
                    f = app.PFL.Value;
                    x = h + 2*f;
                    y = g;
                    z = (x^2)/(4*f) + (y^2)/(4*f) - f;
                    % No changing carrier fier position
                    if isequal(app.XAxismSlider.Value,0) && isequal(app.YAxismSlider.Value,0)
                        app.ChannelStatusLamp_4.Color = 'Yellow';
                        %Inject angle is 0
                    elseif y == 0
                        if z < 0
                            if app.XAxismSlider.Value > 0
                                app.ChannelStatusLamp_4.Color = 'Green';
                                app.Image2_8.Enable = 'on';
                                app.CounterclockwiseLabel_4.Enable = 'on';
                            elseif app.XAxismSlider.Value < 0
                                app.ChannelStatusLamp_4.Color = 'Green';
                                app.Image2_7.Enable = 'on';
                                app.ClockwiseLabel_4.Enable = 'on';
                            elseif app.XAxismSlider.Value == 0
                                app.ChannelStatusLamp_4.Color = 'Yellow';
                            end
                        end
                        if z > 0
                            if app.XAxismSlider.Value < 0
                                app.ChannelStatusLamp_4.Color = 'Green';
                                app.Image2_8.Enable = 'on';
                                app.CounterclockwiseLabel_4.Enable = 'on';
                            elseif app.XAxismSlider.Value > 0
                                app.ChannelStatusLamp_4.Color = 'Green';
                                app.Image2_7.Enable = 'on';
                                app.ClockwiseLabel_4.Enable = 'on';
                            elseif app.XAxismSlider.Value == 0
                                app.ChannelStatusLamp_4.Color = 'Yellow';
                            end
                        end
                        if z ==0
                            app.ChannelStatusLamp_4.Color = 'Yellow';
                        end
                    elseif y < 0
                        Y3 = (z/y) * app.XAxismSlider.Value;
                        if app.YAxismSlider.Value > Y3
                            app.ChannelStatusLamp_4.Color = 'Green';
                            app.Image2_8.Enable = 'on';
                            app.CounterclockwiseLabel_4.Enable = 'on';
                        elseif app.YAxismSlider.Value < Y3
                            app.ChannelStatusLamp_5.Color = 'Green';
                            app.Image2_7.Enable = 'on';
                            app.ClockwiseLabel_4.Enable = 'on';
                        elseif aapp.YAxismSlider.Value == Y3
                            app.ChannelStatusLamp_4.Color = 'Yellow';
                        end
                    elseif y > 0
                        Y3 = (z/y) * app.XAxismSlider.Value;
                        if app.YAxismSlider.Value < Y3
                            app.ChannelStatusLamp_4.Color = 'Green';
                            app.Image2_8.Enable = 'on';
                            app.CounterclockwiseLabel_4.Enable = 'on';
                        elseif app.YAxismSlider.Value > Y3
                            app.ChannelStatusLamp_4.Color = 'Green';
                            app.Image2_7.Enable = 'on';
                            app.ClockwiseLabel_4.Enable = 'on';
                        elseif aapp.YAxismSlider.Value == Y3
                            app.ChannelStatusLamp_4.Color = 'Yellow';
                        end
                    end
                end
                % Channel 4 End
                % Channel 5
                if isequal(White,OAMCC5) == 1
                    g = app.XPosition1_5.Value;
                    h = app.YPosition1_5.Value;
                    f = app.PFL.Value;
                    x = h + 2*f;
                    y = g;
                    z = (x^2)/(4*f) + (y^2)/(4*f) - f;
                    % No changing carrier fier position
                    if isequal(app.XAxismSlider.Value,0) && isequal(app.YAxismSlider.Value,0)
                        app.ChannelStatusLamp_5.Color = 'Yellow';
                        %Inject angle is 0
                    elseif y == 0
                        if z < 0
                            if app.XAxismSlider.Value > 0
                                app.ChannelStatusLamp_5.Color = 'Green';
                                app.Image2_10.Enable = 'on';
                                app.CounterclockwiseLabel_5.Enable = 'on';
                            elseif app.XAxismSlider.Value < 0
                                app.ChannelStatusLamp_5.Color = 'Green';
                                app.Image2_9.Enable = 'on';
                                app.ClockwiseLabel_5.Enable = 'on';
                            elseif app.XAxismSlider.Value == 0
                                app.ChannelStatusLamp_5.Color = 'Yellow';
                            end
                        end
                        if z > 0
                            if app.XAxismSlider.Value < 0
                                app.ChannelStatusLamp_5.Color = 'Green';
                                app.Image2_10.Enable = 'on';
                                app.CounterclockwiseLabel_5.Enable = 'on';
                            elseif app.XAxismSlider.Value > 0
                                app.ChannelStatusLamp_5.Color = 'Green';
                                app.Image2_9.Enable = 'on';
                                app.ClockwiseLabel_5.Enable = 'on';
                            elseif app.XAxismSlider.Value == 0
                                app.ChannelStatusLamp_5.Color = 'Yellow';
                            end
                        end
                        if z ==0
                            app.ChannelStatusLamp_5.Color = 'Yellow';
                        end
                    elseif y < 0
                        Y3 = (z/y) * app.XAxismSlider.Value;
                        if app.YAxismSlider.Value > Y3
                            app.ChannelStatusLamp_5.Color = 'Green';
                            app.Image2_10.Enable = 'on';
                            app.CounterclockwiseLabel_5.Enable = 'on';
                        elseif app.YAxismSlider.Value < Y3
                            app.ChannelStatusLamp_5.Color = 'Green';
                            app.Image2_9.Enable = 'on';
                            app.ClockwiseLabel_5.Enable = 'on';
                        elseif aapp.YAxismSlider.Value == Y3
                            app.ChannelStatusLamp_5.Color = 'Yellow';
                        end
                    elseif y > 0
                        Y3 = (z/y) * app.XAxismSlider.Value;
                        if app.YAxismSlider.Value < Y3
                            app.ChannelStatusLamp_5.Color = 'Green';
                            app.Image2_10.Enable = 'on';
                            app.CounterclockwiseLabel_5.Enable = 'on';
                        elseif app.YAxismSlider.Value > Y3
                            app.ChannelStatusLamp_5.Color = 'Green';
                            app.Image2_9.Enable = 'on';
                            app.ClockwiseLabel_5.Enable = 'on';
                        elseif aapp.YAxismSlider.Value == Y3
                            app.ChannelStatusLamp_5.Color = 'Yellow';
                        end
                    end
                end
                % Channel 5 End
            end
        end
    end

    % Component initialization
    methods (Access = private)

        % Create UIFigure and components
        function createComponents(app)

            % Create UIFigure and hide until all components are created
            app.UIFigure = uifigure('Visible', 'off');
            app.UIFigure.Color = [1 1 1];
            app.UIFigure.Position = [100 100 928 790];
            app.UIFigure.Name = 'UI Figure';

            % Create TabGroup
            app.TabGroup = uitabgroup(app.UIFigure);
            app.TabGroup.Position = [1 1 928 688];

            % Create ConfigurationTab
            app.ConfigurationTab = uitab(app.TabGroup);
            app.ConfigurationTab.Title = 'Configuration';
            app.ConfigurationTab.BackgroundColor = [1 1 1];

            % Create OffAxisParabolicMirrorPanel
            app.OffAxisParabolicMirrorPanel = uipanel(app.ConfigurationTab);
            app.OffAxisParabolicMirrorPanel.Title = '90° Off-Axis Parabolic Mirror';
            app.OffAxisParabolicMirrorPanel.BackgroundColor = [1 1 1];
            app.OffAxisParabolicMirrorPanel.FontName = 'MS Sans Serif';
            app.OffAxisParabolicMirrorPanel.Position = [2 384 926 82];

            % Create mmLabel
            app.mmLabel = uilabel(app.OffAxisParabolicMirrorPanel);
            app.mmLabel.VerticalAlignment = 'top';
            app.mmLabel.Position = [349 27 25 15];
            app.mmLabel.Text = 'mm';

            % Create mmLabel_2
            app.mmLabel_2 = uilabel(app.OffAxisParabolicMirrorPanel);
            app.mmLabel_2.VerticalAlignment = 'top';
            app.mmLabel_2.Position = [603 27 25 15];
            app.mmLabel_2.Text = 'mm';

            % Create ReflectedFocalLengthRFLEditFieldLabel
            app.ReflectedFocalLengthRFLEditFieldLabel = uilabel(app.OffAxisParabolicMirrorPanel);
            app.ReflectedFocalLengthRFLEditFieldLabel.HorizontalAlignment = 'right';
            app.ReflectedFocalLengthRFLEditFieldLabel.VerticalAlignment = 'top';
            app.ReflectedFocalLengthRFLEditFieldLabel.Position = [373 27 165 15];
            app.ReflectedFocalLengthRFLEditFieldLabel.Text = 'Reflected Focal Length (RFL)';

            % Create ReflectedFocalLengthRFLEditField
            app.ReflectedFocalLengthRFLEditField = uieditfield(app.OffAxisParabolicMirrorPanel, 'numeric');
            app.ReflectedFocalLengthRFLEditField.Editable = 'off';
            app.ReflectedFocalLengthRFLEditField.Position = [553 23 49 22];
            app.ReflectedFocalLengthRFLEditField.Value = 101.6;

            % Create EditFieldLabel
            app.EditFieldLabel = uilabel(app.OffAxisParabolicMirrorPanel);
            app.EditFieldLabel.HorizontalAlignment = 'right';
            app.EditFieldLabel.VerticalAlignment = 'top';
            app.EditFieldLabel.Position = [272 31 25 15];
            app.EditFieldLabel.Text = '';

            % Create PFL
            app.PFL = uieditfield(app.OffAxisParabolicMirrorPanel, 'numeric');
            app.PFL.Editable = 'off';
            app.PFL.Position = [300 23 49 22];
            app.PFL.Value = 50.8;

            % Create ParentFocalLengthSliderLabel
            app.ParentFocalLengthSliderLabel = uilabel(app.OffAxisParabolicMirrorPanel);
            app.ParentFocalLengthSliderLabel.HorizontalAlignment = 'right';
            app.ParentFocalLengthSliderLabel.VerticalAlignment = 'top';
            app.ParentFocalLengthSliderLabel.Position = [-3 30 115 15];
            app.ParentFocalLengthSliderLabel.Text = 'Parent Focal Length';

            % Create ParentFocalLengthSlider
            app.ParentFocalLengthSlider = uislider(app.OffAxisParabolicMirrorPanel);
            app.ParentFocalLengthSlider.Limits = [10 100];
            app.ParentFocalLengthSlider.ValueChangedFcn = createCallbackFcn(app, @ParentFocalLengthSliderValueChanged, true);
            app.ParentFocalLengthSlider.Position = [133 36 150 3];
            app.ParentFocalLengthSlider.Value = 50.8;

            % Create MirrorDiameterEditFieldLabel
            app.MirrorDiameterEditFieldLabel = uilabel(app.OffAxisParabolicMirrorPanel);
            app.MirrorDiameterEditFieldLabel.HorizontalAlignment = 'right';
            app.MirrorDiameterEditFieldLabel.Position = [634 23 89 22];
            app.MirrorDiameterEditFieldLabel.Text = 'Mirror Diameter';

            % Create MirrorDiameterEditField
            app.MirrorDiameterEditField = uieditfield(app.OffAxisParabolicMirrorPanel, 'numeric');
            app.MirrorDiameterEditField.Limits = [1 Inf];
            app.MirrorDiameterEditField.ValueChangedFcn = createCallbackFcn(app, @MirrorDiameterEditFieldValueChanged, true);
            app.MirrorDiameterEditField.Position = [738 23 45 22];
            app.MirrorDiameterEditField.Value = 50.8;

            % Create mmLabel_16
            app.mmLabel_16 = uilabel(app.OffAxisParabolicMirrorPanel);
            app.mmLabel_16.VerticalAlignment = 'top';
            app.mmLabel_16.Position = [784 27 25 15];
            app.mmLabel_16.Text = 'mm';

            % Create MirrorDiaCheckLampLabel
            app.MirrorDiaCheckLampLabel = uilabel(app.OffAxisParabolicMirrorPanel);
            app.MirrorDiaCheckLampLabel.HorizontalAlignment = 'center';
            app.MirrorDiaCheckLampLabel.Position = [818 11 99 22];
            app.MirrorDiaCheckLampLabel.Text = 'Mirror Dia. Check';

            % Create MirrorDiaCheckLamp
            app.MirrorDiaCheckLamp = uilamp(app.OffAxisParabolicMirrorPanel);
            app.MirrorDiaCheckLamp.Position = [857 37 20 20];

            % Create ChannelsSettingPanel
            app.ChannelsSettingPanel = uipanel(app.ConfigurationTab);
            app.ChannelsSettingPanel.Title = 'Channels Setting';
            app.ChannelsSettingPanel.BackgroundColor = [1 1 1];
            app.ChannelsSettingPanel.FontName = 'MS Sans Serif';
            app.ChannelsSettingPanel.Position = [2 41 926 344];

            % Create Channel1LampLabel
            app.Channel1LampLabel = uilabel(app.ChannelsSettingPanel);
            app.Channel1LampLabel.HorizontalAlignment = 'center';
            app.Channel1LampLabel.VerticalAlignment = 'top';
            app.Channel1LampLabel.Position = [72 281 62 15];
            app.Channel1LampLabel.Text = 'Channel 1';

            % Create Channel1Lamp
            app.Channel1Lamp = uilamp(app.ChannelsSettingPanel);
            app.Channel1Lamp.Position = [93 300 20 20];
            app.Channel1Lamp.Color = [0 0 0];

            % Create Switch
            app.Switch = uiswitch(app.ChannelsSettingPanel, 'toggle');
            app.Switch.Orientation = 'horizontal';
            app.Switch.ValueChangedFcn = createCallbackFcn(app, @SwitchValueChanged, true);
            app.Switch.Position = [81 260 45 20];

            % Create XPositionEditFieldLabel
            app.XPositionEditFieldLabel = uilabel(app.ChannelsSettingPanel);
            app.XPositionEditFieldLabel.HorizontalAlignment = 'right';
            app.XPositionEditFieldLabel.VerticalAlignment = 'top';
            app.XPositionEditFieldLabel.Position = [39 222 60 15];
            app.XPositionEditFieldLabel.Text = 'X Position';

            % Create XPosition1
            app.XPosition1 = uieditfield(app.ChannelsSettingPanel, 'numeric');
            app.XPosition1.ValueChangedFcn = createCallbackFcn(app, @XPosition1ValueChanged, true);
            app.XPosition1.Position = [115 218 44 22];

            % Create YPositionEditFieldLabel
            app.YPositionEditFieldLabel = uilabel(app.ChannelsSettingPanel);
            app.YPositionEditFieldLabel.HorizontalAlignment = 'right';
            app.YPositionEditFieldLabel.VerticalAlignment = 'top';
            app.YPositionEditFieldLabel.Position = [39 189 60 15];
            app.YPositionEditFieldLabel.Text = 'Y Position';

            % Create YPosition1
            app.YPosition1 = uieditfield(app.ChannelsSettingPanel, 'numeric');
            app.YPosition1.ValueChangedFcn = createCallbackFcn(app, @YPosition1ValueChanged, true);
            app.YPosition1.Position = [115 185 44 22];

            % Create InjectAngleLabel
            app.InjectAngleLabel = uilabel(app.ChannelsSettingPanel);
            app.InjectAngleLabel.HorizontalAlignment = 'right';
            app.InjectAngleLabel.VerticalAlignment = 'top';
            app.InjectAngleLabel.Position = [30 156 69 15];
            app.InjectAngleLabel.Text = 'Inject Angle';

            % Create InjectA
            app.InjectA = uieditfield(app.ChannelsSettingPanel, 'numeric');
            app.InjectA.Editable = 'off';
            app.InjectA.Position = [115 152 44 22];

            % Create degLabel
            app.degLabel = uilabel(app.ChannelsSettingPanel);
            app.degLabel.VerticalAlignment = 'top';
            app.degLabel.Position = [159 158 26 15];
            app.degLabel.Text = 'deg';

            % Create mmLabel_4
            app.mmLabel_4 = uilabel(app.ChannelsSettingPanel);
            app.mmLabel_4.VerticalAlignment = 'top';
            app.mmLabel_4.Position = [159 190 25 15];
            app.mmLabel_4.Text = 'mm';

            % Create mmLabel_3
            app.mmLabel_3 = uilabel(app.ChannelsSettingPanel);
            app.mmLabel_3.VerticalAlignment = 'top';
            app.mmLabel_3.Position = [159 221 25 15];
            app.mmLabel_3.Text = 'mm';

            % Create Channel1InjectAngleGaugeLabel
            app.Channel1InjectAngleGaugeLabel = uilabel(app.ChannelsSettingPanel);
            app.Channel1InjectAngleGaugeLabel.HorizontalAlignment = 'center';
            app.Channel1InjectAngleGaugeLabel.VerticalAlignment = 'top';
            app.Channel1InjectAngleGaugeLabel.Position = [38 12 129 15];
            app.Channel1InjectAngleGaugeLabel.Text = 'Channel 1 Inject Angle';

            % Create Channel1InjectAngleGauge
            app.Channel1InjectAngleGauge = uigauge(app.ChannelsSettingPanel, 'semicircular');
            app.Channel1InjectAngleGauge.Limits = [0 30];
            app.Channel1InjectAngleGauge.Position = [42 42 120 65];

            % Create Switch_2
            app.Switch_2 = uiswitch(app.ChannelsSettingPanel, 'toggle');
            app.Switch_2.Orientation = 'horizontal';
            app.Switch_2.ValueChangedFcn = createCallbackFcn(app, @Switch_2ValueChanged, true);
            app.Switch_2.Position = [261 260 45 20];

            % Create degLabel_2
            app.degLabel_2 = uilabel(app.ChannelsSettingPanel);
            app.degLabel_2.VerticalAlignment = 'top';
            app.degLabel_2.Position = [338 158 26 15];
            app.degLabel_2.Text = 'deg';

            % Create mmLabel_5
            app.mmLabel_5 = uilabel(app.ChannelsSettingPanel);
            app.mmLabel_5.VerticalAlignment = 'top';
            app.mmLabel_5.Position = [338 190 25 15];
            app.mmLabel_5.Text = 'mm';

            % Create mmLabel_6
            app.mmLabel_6 = uilabel(app.ChannelsSettingPanel);
            app.mmLabel_6.VerticalAlignment = 'top';
            app.mmLabel_6.Position = [338 221 25 15];
            app.mmLabel_6.Text = 'mm';

            % Create Channel2LampLabel
            app.Channel2LampLabel = uilabel(app.ChannelsSettingPanel);
            app.Channel2LampLabel.HorizontalAlignment = 'center';
            app.Channel2LampLabel.VerticalAlignment = 'top';
            app.Channel2LampLabel.Position = [252 281 62 15];
            app.Channel2LampLabel.Text = 'Channel 2';

            % Create Channel2Lamp
            app.Channel2Lamp = uilamp(app.ChannelsSettingPanel);
            app.Channel2Lamp.Position = [273 300 20 20];
            app.Channel2Lamp.Color = [0 0 0];

            % Create XPositionEditFieldLabel_2
            app.XPositionEditFieldLabel_2 = uilabel(app.ChannelsSettingPanel);
            app.XPositionEditFieldLabel_2.HorizontalAlignment = 'right';
            app.XPositionEditFieldLabel_2.VerticalAlignment = 'top';
            app.XPositionEditFieldLabel_2.Position = [219 221 60 15];
            app.XPositionEditFieldLabel_2.Text = 'X Position';

            % Create XPosition1_2
            app.XPosition1_2 = uieditfield(app.ChannelsSettingPanel, 'numeric');
            app.XPosition1_2.ValueChangedFcn = createCallbackFcn(app, @XPosition1_2ValueChanged, true);
            app.XPosition1_2.Position = [296 217 42 22];

            % Create YPositionEditFieldLabel_2
            app.YPositionEditFieldLabel_2 = uilabel(app.ChannelsSettingPanel);
            app.YPositionEditFieldLabel_2.HorizontalAlignment = 'right';
            app.YPositionEditFieldLabel_2.VerticalAlignment = 'top';
            app.YPositionEditFieldLabel_2.Position = [219 188 60 15];
            app.YPositionEditFieldLabel_2.Text = 'Y Position';

            % Create YPosition1_2
            app.YPosition1_2 = uieditfield(app.ChannelsSettingPanel, 'numeric');
            app.YPosition1_2.ValueChangedFcn = createCallbackFcn(app, @YPosition1_2ValueChanged, true);
            app.YPosition1_2.Position = [296 184 42 22];

            % Create InjectAngleLabel_2
            app.InjectAngleLabel_2 = uilabel(app.ChannelsSettingPanel);
            app.InjectAngleLabel_2.HorizontalAlignment = 'right';
            app.InjectAngleLabel_2.VerticalAlignment = 'top';
            app.InjectAngleLabel_2.Position = [210 155 69 15];
            app.InjectAngleLabel_2.Text = 'Inject Angle';

            % Create InjectA_2
            app.InjectA_2 = uieditfield(app.ChannelsSettingPanel, 'numeric');
            app.InjectA_2.Editable = 'off';
            app.InjectA_2.Position = [296 151 42 22];

            % Create Channel2InjectAngleGaugeLabel
            app.Channel2InjectAngleGaugeLabel = uilabel(app.ChannelsSettingPanel);
            app.Channel2InjectAngleGaugeLabel.HorizontalAlignment = 'center';
            app.Channel2InjectAngleGaugeLabel.VerticalAlignment = 'top';
            app.Channel2InjectAngleGaugeLabel.Position = [218 12 129 15];
            app.Channel2InjectAngleGaugeLabel.Text = 'Channel 2 Inject Angle';

            % Create Channel2InjectAngleGauge
            app.Channel2InjectAngleGauge = uigauge(app.ChannelsSettingPanel, 'semicircular');
            app.Channel2InjectAngleGauge.Limits = [0 30];
            app.Channel2InjectAngleGauge.Position = [222 42 120 65];

            % Create Switch_3
            app.Switch_3 = uiswitch(app.ChannelsSettingPanel, 'toggle');
            app.Switch_3.Orientation = 'horizontal';
            app.Switch_3.ValueChangedFcn = createCallbackFcn(app, @Switch_3ValueChanged, true);
            app.Switch_3.Position = [450 260 45 20];

            % Create degLabel_3
            app.degLabel_3 = uilabel(app.ChannelsSettingPanel);
            app.degLabel_3.VerticalAlignment = 'top';
            app.degLabel_3.Position = [528 158 26 15];
            app.degLabel_3.Text = 'deg';

            % Create mmLabel_7
            app.mmLabel_7 = uilabel(app.ChannelsSettingPanel);
            app.mmLabel_7.VerticalAlignment = 'top';
            app.mmLabel_7.Position = [528 190 25 15];
            app.mmLabel_7.Text = 'mm';

            % Create mmLabel_8
            app.mmLabel_8 = uilabel(app.ChannelsSettingPanel);
            app.mmLabel_8.VerticalAlignment = 'top';
            app.mmLabel_8.Position = [528 221 25 15];
            app.mmLabel_8.Text = 'mm';

            % Create Channel3LampLabel
            app.Channel3LampLabel = uilabel(app.ChannelsSettingPanel);
            app.Channel3LampLabel.HorizontalAlignment = 'center';
            app.Channel3LampLabel.VerticalAlignment = 'top';
            app.Channel3LampLabel.Position = [441 281 62 15];
            app.Channel3LampLabel.Text = 'Channel 3';

            % Create Channel3Lamp
            app.Channel3Lamp = uilamp(app.ChannelsSettingPanel);
            app.Channel3Lamp.Position = [462 300 20 20];
            app.Channel3Lamp.Color = [0 0 0];

            % Create XPositionEditFieldLabel_3
            app.XPositionEditFieldLabel_3 = uilabel(app.ChannelsSettingPanel);
            app.XPositionEditFieldLabel_3.HorizontalAlignment = 'right';
            app.XPositionEditFieldLabel_3.VerticalAlignment = 'top';
            app.XPositionEditFieldLabel_3.Position = [408 221 60 15];
            app.XPositionEditFieldLabel_3.Text = 'X Position';

            % Create XPosition1_3
            app.XPosition1_3 = uieditfield(app.ChannelsSettingPanel, 'numeric');
            app.XPosition1_3.ValueChangedFcn = createCallbackFcn(app, @XPosition1_3ValueChanged, true);
            app.XPosition1_3.Position = [484 217 43 22];

            % Create YPositionEditFieldLabel_3
            app.YPositionEditFieldLabel_3 = uilabel(app.ChannelsSettingPanel);
            app.YPositionEditFieldLabel_3.HorizontalAlignment = 'right';
            app.YPositionEditFieldLabel_3.VerticalAlignment = 'top';
            app.YPositionEditFieldLabel_3.Position = [408 188 60 15];
            app.YPositionEditFieldLabel_3.Text = 'Y Position';

            % Create YPosition1_3
            app.YPosition1_3 = uieditfield(app.ChannelsSettingPanel, 'numeric');
            app.YPosition1_3.ValueChangedFcn = createCallbackFcn(app, @YPosition1_3ValueChanged, true);
            app.YPosition1_3.Position = [484 184 43 22];

            % Create InjectAngleLabel_3
            app.InjectAngleLabel_3 = uilabel(app.ChannelsSettingPanel);
            app.InjectAngleLabel_3.HorizontalAlignment = 'right';
            app.InjectAngleLabel_3.VerticalAlignment = 'top';
            app.InjectAngleLabel_3.Position = [399 155 69 15];
            app.InjectAngleLabel_3.Text = 'Inject Angle';

            % Create InjectA_3
            app.InjectA_3 = uieditfield(app.ChannelsSettingPanel, 'numeric');
            app.InjectA_3.Editable = 'off';
            app.InjectA_3.Position = [484 151 43 22];

            % Create Channel3InjectAngleGaugeLabel
            app.Channel3InjectAngleGaugeLabel = uilabel(app.ChannelsSettingPanel);
            app.Channel3InjectAngleGaugeLabel.HorizontalAlignment = 'center';
            app.Channel3InjectAngleGaugeLabel.VerticalAlignment = 'top';
            app.Channel3InjectAngleGaugeLabel.Position = [407 12 129 15];
            app.Channel3InjectAngleGaugeLabel.Text = 'Channel 3 Inject Angle';

            % Create Channel3InjectAngleGauge
            app.Channel3InjectAngleGauge = uigauge(app.ChannelsSettingPanel, 'semicircular');
            app.Channel3InjectAngleGauge.Limits = [0 30];
            app.Channel3InjectAngleGauge.Position = [411 42 120 65];

            % Create Switch_4
            app.Switch_4 = uiswitch(app.ChannelsSettingPanel, 'toggle');
            app.Switch_4.Orientation = 'horizontal';
            app.Switch_4.ValueChangedFcn = createCallbackFcn(app, @Switch_4ValueChanged, true);
            app.Switch_4.Position = [635 260 45 20];

            % Create degLabel_4
            app.degLabel_4 = uilabel(app.ChannelsSettingPanel);
            app.degLabel_4.VerticalAlignment = 'top';
            app.degLabel_4.Position = [713 158 26 15];
            app.degLabel_4.Text = 'deg';

            % Create mmLabel_9
            app.mmLabel_9 = uilabel(app.ChannelsSettingPanel);
            app.mmLabel_9.VerticalAlignment = 'top';
            app.mmLabel_9.Position = [713 190 25 15];
            app.mmLabel_9.Text = 'mm';

            % Create mmLabel_10
            app.mmLabel_10 = uilabel(app.ChannelsSettingPanel);
            app.mmLabel_10.VerticalAlignment = 'top';
            app.mmLabel_10.Position = [713 221 25 15];
            app.mmLabel_10.Text = 'mm';

            % Create Channel4LampLabel
            app.Channel4LampLabel = uilabel(app.ChannelsSettingPanel);
            app.Channel4LampLabel.HorizontalAlignment = 'center';
            app.Channel4LampLabel.VerticalAlignment = 'top';
            app.Channel4LampLabel.Position = [626 281 62 15];
            app.Channel4LampLabel.Text = 'Channel 4';

            % Create Channel4Lamp
            app.Channel4Lamp = uilamp(app.ChannelsSettingPanel);
            app.Channel4Lamp.Position = [647 300 20 20];
            app.Channel4Lamp.Color = [0 0 0];

            % Create XPositionEditFieldLabel_4
            app.XPositionEditFieldLabel_4 = uilabel(app.ChannelsSettingPanel);
            app.XPositionEditFieldLabel_4.HorizontalAlignment = 'right';
            app.XPositionEditFieldLabel_4.VerticalAlignment = 'top';
            app.XPositionEditFieldLabel_4.Position = [593 221 60 15];
            app.XPositionEditFieldLabel_4.Text = 'X Position';

            % Create XPosition1_4
            app.XPosition1_4 = uieditfield(app.ChannelsSettingPanel, 'numeric');
            app.XPosition1_4.ValueChangedFcn = createCallbackFcn(app, @XPosition1_4ValueChanged, true);
            app.XPosition1_4.Position = [669 217 43 22];

            % Create YPositionEditFieldLabel_4
            app.YPositionEditFieldLabel_4 = uilabel(app.ChannelsSettingPanel);
            app.YPositionEditFieldLabel_4.HorizontalAlignment = 'right';
            app.YPositionEditFieldLabel_4.VerticalAlignment = 'top';
            app.YPositionEditFieldLabel_4.Position = [593 188 60 15];
            app.YPositionEditFieldLabel_4.Text = 'Y Position';

            % Create YPosition1_4
            app.YPosition1_4 = uieditfield(app.ChannelsSettingPanel, 'numeric');
            app.YPosition1_4.ValueChangedFcn = createCallbackFcn(app, @YPosition1_4ValueChanged, true);
            app.YPosition1_4.Position = [669 184 43 22];

            % Create InjectAngleLabel_4
            app.InjectAngleLabel_4 = uilabel(app.ChannelsSettingPanel);
            app.InjectAngleLabel_4.HorizontalAlignment = 'right';
            app.InjectAngleLabel_4.VerticalAlignment = 'top';
            app.InjectAngleLabel_4.Position = [584 155 69 15];
            app.InjectAngleLabel_4.Text = 'Inject Angle';

            % Create InjectA_4
            app.InjectA_4 = uieditfield(app.ChannelsSettingPanel, 'numeric');
            app.InjectA_4.Editable = 'off';
            app.InjectA_4.Position = [669 151 43 22];

            % Create Channel4InjectAngleGaugeLabel
            app.Channel4InjectAngleGaugeLabel = uilabel(app.ChannelsSettingPanel);
            app.Channel4InjectAngleGaugeLabel.HorizontalAlignment = 'center';
            app.Channel4InjectAngleGaugeLabel.VerticalAlignment = 'top';
            app.Channel4InjectAngleGaugeLabel.Position = [592 12 129 15];
            app.Channel4InjectAngleGaugeLabel.Text = 'Channel 4 Inject Angle';

            % Create Channel4InjectAngleGauge
            app.Channel4InjectAngleGauge = uigauge(app.ChannelsSettingPanel, 'semicircular');
            app.Channel4InjectAngleGauge.Limits = [0 30];
            app.Channel4InjectAngleGauge.Position = [596 42 120 65];

            % Create Switch_5
            app.Switch_5 = uiswitch(app.ChannelsSettingPanel, 'toggle');
            app.Switch_5.Orientation = 'horizontal';
            app.Switch_5.ValueChangedFcn = createCallbackFcn(app, @Switch_5ValueChanged, true);
            app.Switch_5.Position = [815 260 45 20];

            % Create degLabel_5
            app.degLabel_5 = uilabel(app.ChannelsSettingPanel);
            app.degLabel_5.VerticalAlignment = 'top';
            app.degLabel_5.Position = [893 158 26 15];
            app.degLabel_5.Text = 'deg';

            % Create mmLabel_11
            app.mmLabel_11 = uilabel(app.ChannelsSettingPanel);
            app.mmLabel_11.VerticalAlignment = 'top';
            app.mmLabel_11.Position = [893 190 25 15];
            app.mmLabel_11.Text = 'mm';

            % Create mmLabel_12
            app.mmLabel_12 = uilabel(app.ChannelsSettingPanel);
            app.mmLabel_12.VerticalAlignment = 'top';
            app.mmLabel_12.Position = [893 221 25 15];
            app.mmLabel_12.Text = 'mm';

            % Create Channel5LampLabel
            app.Channel5LampLabel = uilabel(app.ChannelsSettingPanel);
            app.Channel5LampLabel.HorizontalAlignment = 'center';
            app.Channel5LampLabel.Position = [806 281 62 15];
            app.Channel5LampLabel.Text = 'Channel 5';

            % Create Channel5Lamp
            app.Channel5Lamp = uilamp(app.ChannelsSettingPanel);
            app.Channel5Lamp.Position = [827 300 20 20];
            app.Channel5Lamp.Color = [0 0 0];

            % Create XPositionEditFieldLabel_5
            app.XPositionEditFieldLabel_5 = uilabel(app.ChannelsSettingPanel);
            app.XPositionEditFieldLabel_5.HorizontalAlignment = 'right';
            app.XPositionEditFieldLabel_5.VerticalAlignment = 'top';
            app.XPositionEditFieldLabel_5.Position = [773 221 60 15];
            app.XPositionEditFieldLabel_5.Text = 'X Position';

            % Create XPosition1_5
            app.XPosition1_5 = uieditfield(app.ChannelsSettingPanel, 'numeric');
            app.XPosition1_5.ValueChangedFcn = createCallbackFcn(app, @XPosition1_5ValueChanged, true);
            app.XPosition1_5.Position = [849 217 43 22];

            % Create YPositionEditFieldLabel_5
            app.YPositionEditFieldLabel_5 = uilabel(app.ChannelsSettingPanel);
            app.YPositionEditFieldLabel_5.HorizontalAlignment = 'right';
            app.YPositionEditFieldLabel_5.VerticalAlignment = 'top';
            app.YPositionEditFieldLabel_5.Position = [773 188 60 15];
            app.YPositionEditFieldLabel_5.Text = 'Y Position';

            % Create YPosition1_5
            app.YPosition1_5 = uieditfield(app.ChannelsSettingPanel, 'numeric');
            app.YPosition1_5.ValueChangedFcn = createCallbackFcn(app, @YPosition1_5ValueChanged, true);
            app.YPosition1_5.Position = [849 184 43 22];

            % Create InjectAngleLabel_5
            app.InjectAngleLabel_5 = uilabel(app.ChannelsSettingPanel);
            app.InjectAngleLabel_5.HorizontalAlignment = 'right';
            app.InjectAngleLabel_5.VerticalAlignment = 'top';
            app.InjectAngleLabel_5.Position = [764 155 69 15];
            app.InjectAngleLabel_5.Text = 'Inject Angle';

            % Create InjectA_5
            app.InjectA_5 = uieditfield(app.ChannelsSettingPanel, 'numeric');
            app.InjectA_5.Editable = 'off';
            app.InjectA_5.Position = [849 151 43 22];

            % Create Channel5InjectAngleGaugeLabel
            app.Channel5InjectAngleGaugeLabel = uilabel(app.ChannelsSettingPanel);
            app.Channel5InjectAngleGaugeLabel.HorizontalAlignment = 'center';
            app.Channel5InjectAngleGaugeLabel.Position = [772 12 129 15];
            app.Channel5InjectAngleGaugeLabel.Text = 'Channel 5 Inject Angle';

            % Create Channel5InjectAngleGauge
            app.Channel5InjectAngleGauge = uigauge(app.ChannelsSettingPanel, 'semicircular');
            app.Channel5InjectAngleGauge.Limits = [0 30];
            app.Channel5InjectAngleGauge.Position = [776 42 120 65];

            % Create InjAngleRangeEditFieldLabel
            app.InjAngleRangeEditFieldLabel = uilabel(app.ChannelsSettingPanel);
            app.InjAngleRangeEditFieldLabel.HorizontalAlignment = 'right';
            app.InjAngleRangeEditFieldLabel.Position = [6 119 93 22];
            app.InjAngleRangeEditFieldLabel.Text = 'Inj. Angle Range';

            % Create InjAngleRangeEditField
            app.InjAngleRangeEditField = uieditfield(app.ChannelsSettingPanel, 'numeric');
            app.InjAngleRangeEditField.Editable = 'off';
            app.InjAngleRangeEditField.Position = [115 119 44 22];

            % Create degLabel_8
            app.degLabel_8 = uilabel(app.ChannelsSettingPanel);
            app.degLabel_8.VerticalAlignment = 'top';
            app.degLabel_8.Position = [159 123 26 15];
            app.degLabel_8.Text = 'deg';

            % Create degLabel_9
            app.degLabel_9 = uilabel(app.ChannelsSettingPanel);
            app.degLabel_9.VerticalAlignment = 'top';
            app.degLabel_9.Position = [338 123 26 15];
            app.degLabel_9.Text = 'deg';

            % Create InjAngleRangeEditField_2Label
            app.InjAngleRangeEditField_2Label = uilabel(app.ChannelsSettingPanel);
            app.InjAngleRangeEditField_2Label.HorizontalAlignment = 'right';
            app.InjAngleRangeEditField_2Label.Position = [186 119 93 22];
            app.InjAngleRangeEditField_2Label.Text = 'Inj. Angle Range';

            % Create InjAngleRangeEditField_2
            app.InjAngleRangeEditField_2 = uieditfield(app.ChannelsSettingPanel, 'numeric');
            app.InjAngleRangeEditField_2.Editable = 'off';
            app.InjAngleRangeEditField_2.Position = [296 119 42 22];

            % Create degLabel_10
            app.degLabel_10 = uilabel(app.ChannelsSettingPanel);
            app.degLabel_10.VerticalAlignment = 'top';
            app.degLabel_10.Position = [528 123 26 15];
            app.degLabel_10.Text = 'deg';

            % Create InjAngleRangeEditField_3Label
            app.InjAngleRangeEditField_3Label = uilabel(app.ChannelsSettingPanel);
            app.InjAngleRangeEditField_3Label.HorizontalAlignment = 'right';
            app.InjAngleRangeEditField_3Label.Position = [375 119 93 22];
            app.InjAngleRangeEditField_3Label.Text = 'Inj. Angle Range';

            % Create InjAngleRangeEditField_3
            app.InjAngleRangeEditField_3 = uieditfield(app.ChannelsSettingPanel, 'numeric');
            app.InjAngleRangeEditField_3.Editable = 'off';
            app.InjAngleRangeEditField_3.Position = [484 119 43 22];

            % Create degLabel_11
            app.degLabel_11 = uilabel(app.ChannelsSettingPanel);
            app.degLabel_11.VerticalAlignment = 'top';
            app.degLabel_11.Position = [713 123 26 15];
            app.degLabel_11.Text = 'deg';

            % Create InjAngleRangeEditField_4Label
            app.InjAngleRangeEditField_4Label = uilabel(app.ChannelsSettingPanel);
            app.InjAngleRangeEditField_4Label.HorizontalAlignment = 'right';
            app.InjAngleRangeEditField_4Label.Position = [560 119 93 22];
            app.InjAngleRangeEditField_4Label.Text = 'Inj. Angle Range';

            % Create InjAngleRangeEditField_4
            app.InjAngleRangeEditField_4 = uieditfield(app.ChannelsSettingPanel, 'numeric');
            app.InjAngleRangeEditField_4.Editable = 'off';
            app.InjAngleRangeEditField_4.Position = [670 119 42 22];

            % Create degLabel_12
            app.degLabel_12 = uilabel(app.ChannelsSettingPanel);
            app.degLabel_12.VerticalAlignment = 'top';
            app.degLabel_12.Position = [893 123 26 15];
            app.degLabel_12.Text = 'deg';

            % Create InjAngleRangeEditField_5Label
            app.InjAngleRangeEditField_5Label = uilabel(app.ChannelsSettingPanel);
            app.InjAngleRangeEditField_5Label.HorizontalAlignment = 'right';
            app.InjAngleRangeEditField_5Label.Position = [740 119 93 22];
            app.InjAngleRangeEditField_5Label.Text = 'Inj. Angle Range';

            % Create InjAngleRangeEditField_5
            app.InjAngleRangeEditField_5 = uieditfield(app.ChannelsSettingPanel, 'numeric');
            app.InjAngleRangeEditField_5.Editable = 'off';
            app.InjAngleRangeEditField_5.Position = [850 119 42 22];

            % Create InjectsFibersSettingPanel
            app.InjectsFibersSettingPanel = uipanel(app.ConfigurationTab);
            app.InjectsFibersSettingPanel.Title = 'Injects Fibers Setting';
            app.InjectsFibersSettingPanel.BackgroundColor = [1 1 1];
            app.InjectsFibersSettingPanel.FontName = 'MS Sans Serif';
            app.InjectsFibersSettingPanel.Position = [2 465 369 199];

            % Create ModeFieldDiameterSliderLabel
            app.ModeFieldDiameterSliderLabel = uilabel(app.InjectsFibersSettingPanel);
            app.ModeFieldDiameterSliderLabel.HorizontalAlignment = 'right';
            app.ModeFieldDiameterSliderLabel.VerticalAlignment = 'top';
            app.ModeFieldDiameterSliderLabel.Position = [5 154 119 15];
            app.ModeFieldDiameterSliderLabel.Text = 'Mode Field Diameter';

            % Create ModeFieldDiameterSlider
            app.ModeFieldDiameterSlider = uislider(app.InjectsFibersSettingPanel);
            app.ModeFieldDiameterSlider.Limits = [4 12];
            app.ModeFieldDiameterSlider.ValueChangedFcn = createCallbackFcn(app, @ModeFieldDiameterSliderValueChanged, true);
            app.ModeFieldDiameterSlider.Position = [143 160 150 3];
            app.ModeFieldDiameterSlider.Value = 9;

            % Create MFDField
            app.MFDField = uieditfield(app.InjectsFibersSettingPanel, 'numeric');
            app.MFDField.Editable = 'off';
            app.MFDField.Position = [306 146 33 22];
            app.MFDField.Value = 9;

            % Create mLabel
            app.mLabel = uilabel(app.InjectsFibersSettingPanel);
            app.mLabel.VerticalAlignment = 'top';
            app.mLabel.Position = [346 150 18 15];
            app.mLabel.Text = 'µm';

            % Create NAField
            app.NAField = uieditfield(app.InjectsFibersSettingPanel, 'numeric');
            app.NAField.Editable = 'off';
            app.NAField.Position = [306 100 33 22];
            app.NAField.Value = 0.1;

            % Create NASliderLabel
            app.NASliderLabel = uilabel(app.InjectsFibersSettingPanel);
            app.NASliderLabel.HorizontalAlignment = 'right';
            app.NASliderLabel.VerticalAlignment = 'top';
            app.NASliderLabel.Position = [52 104 25 15];
            app.NASliderLabel.Text = 'NA';

            % Create NASlider
            app.NASlider = uislider(app.InjectsFibersSettingPanel);
            app.NASlider.Limits = [0.1 0.2];
            app.NASlider.ValueChangedFcn = createCallbackFcn(app, @NASliderValueChanged, true);
            app.NASlider.Position = [143 110 150 3];
            app.NASlider.Value = 0.1;

            % Create VEditFieldLabel
            app.VEditFieldLabel = uilabel(app.InjectsFibersSettingPanel);
            app.VEditFieldLabel.HorizontalAlignment = 'right';
            app.VEditFieldLabel.VerticalAlignment = 'top';
            app.VEditFieldLabel.Position = [30 49 25 15];
            app.VEditFieldLabel.Text = 'V';

            % Create VEditField
            app.VEditField = uieditfield(app.InjectsFibersSettingPanel, 'numeric');
            app.VEditField.Editable = 'off';
            app.VEditField.Position = [66 45 45 22];
            app.VEditField.Value = 1.824;

            % Create SingleModeOperationCheckLampLabel
            app.SingleModeOperationCheckLampLabel = uilabel(app.InjectsFibersSettingPanel);
            app.SingleModeOperationCheckLampLabel.HorizontalAlignment = 'right';
            app.SingleModeOperationCheckLampLabel.VerticalAlignment = 'top';
            app.SingleModeOperationCheckLampLabel.Position = [147 16 170 15];
            app.SingleModeOperationCheckLampLabel.Text = 'Single-Mode Operation Check';

            % Create SingleModeOperationCheckLamp
            app.SingleModeOperationCheckLamp = uilamp(app.InjectsFibersSettingPanel);
            app.SingleModeOperationCheckLamp.Position = [128 13 20 20];

            % Create nmLabel
            app.nmLabel = uilabel(app.InjectsFibersSettingPanel);
            app.nmLabel.VerticalAlignment = 'top';
            app.nmLabel.Position = [339 49 25 15];
            app.nmLabel.Text = 'nm';

            % Create SignalwavelengthDropDownLabel
            app.SignalwavelengthDropDownLabel = uilabel(app.InjectsFibersSettingPanel);
            app.SignalwavelengthDropDownLabel.HorizontalAlignment = 'right';
            app.SignalwavelengthDropDownLabel.VerticalAlignment = 'top';
            app.SignalwavelengthDropDownLabel.Position = [158 49 106 15];
            app.SignalwavelengthDropDownLabel.Text = 'Signal wavelength';

            % Create SignalwavelengthDropDown
            app.SignalwavelengthDropDown = uidropdown(app.InjectsFibersSettingPanel);
            app.SignalwavelengthDropDown.Items = {'850', '1300', '1550'};
            app.SignalwavelengthDropDown.ItemsData = {'850', '1300', '1550'};
            app.SignalwavelengthDropDown.ValueChangedFcn = createCallbackFcn(app, @SignalwavelengthDropDownValueChanged, true);
            app.SignalwavelengthDropDown.Position = [272 45 60 22];
            app.SignalwavelengthDropDown.Value = '1550';

            % Create SystemCheckLamp
            app.SystemCheckLamp = uilamp(app.ConfigurationTab);
            app.SystemCheckLamp.Position = [395 10 20 20];
            app.SystemCheckLamp.Color = [0 0 0];

            % Create SystemCheckButton
            app.SystemCheckButton = uibutton(app.ConfigurationTab, 'push');
            app.SystemCheckButton.ButtonPushedFcn = createCallbackFcn(app, @SystemCheckButtonPushed, true);
            app.SystemCheckButton.Position = [442 9 100 22];
            app.SystemCheckButton.Text = 'System Check';

            % Create FocusingLensesMirrorsSettingPanel
            app.FocusingLensesMirrorsSettingPanel = uipanel(app.ConfigurationTab);
            app.FocusingLensesMirrorsSettingPanel.Title = 'Focusing Lenses/Mirrors Setting';
            app.FocusingLensesMirrorsSettingPanel.BackgroundColor = [1 1 1];
            app.FocusingLensesMirrorsSettingPanel.FontName = 'MS Sans Serif';
            app.FocusingLensesMirrorsSettingPanel.Position = [370 465 194 199];

            % Create degLabel_7
            app.degLabel_7 = uilabel(app.FocusingLensesMirrorsSettingPanel);
            app.degLabel_7.VerticalAlignment = 'top';
            app.degLabel_7.Position = [158 150 23 15];
            app.degLabel_7.Text = 'deg';

            % Create ReceivingAngleEditFieldLabel
            app.ReceivingAngleEditFieldLabel = uilabel(app.FocusingLensesMirrorsSettingPanel);
            app.ReceivingAngleEditFieldLabel.HorizontalAlignment = 'right';
            app.ReceivingAngleEditFieldLabel.VerticalAlignment = 'top';
            app.ReceivingAngleEditFieldLabel.Position = [4 151 95 15];
            app.ReceivingAngleEditFieldLabel.Text = 'Receiving Angle';

            % Create ReceivingAngleEditField
            app.ReceivingAngleEditField = uieditfield(app.FocusingLensesMirrorsSettingPanel, 'numeric');
            app.ReceivingAngleEditField.Position = [106 146 46 22];
            app.ReceivingAngleEditField.Value = 5.739;

            % Create fEditFieldLabel
            app.fEditFieldLabel = uilabel(app.FocusingLensesMirrorsSettingPanel);
            app.fEditFieldLabel.HorizontalAlignment = 'center';
            app.fEditFieldLabel.VerticalAlignment = 'top';
            app.fEditFieldLabel.Position = [43 106 18 15];
            app.fEditFieldLabel.Text = 'f';

            % Create fEditField
            app.fEditField = uieditfield(app.FocusingLensesMirrorsSettingPanel, 'numeric');
            app.fEditField.Limits = [4 19];
            app.fEditField.ValueChangedFcn = createCallbackFcn(app, @fEditFieldValueChanged, true);
            app.fEditField.Position = [106 102 46 22];
            app.fEditField.Value = 8.02;

            % Create mmLabel_13
            app.mmLabel_13 = uilabel(app.FocusingLensesMirrorsSettingPanel);
            app.mmLabel_13.VerticalAlignment = 'top';
            app.mmLabel_13.Position = [158 106 25 15];
            app.mmLabel_13.Text = 'mm';

            % Create BeamDiaEditFieldLabel
            app.BeamDiaEditFieldLabel = uilabel(app.FocusingLensesMirrorsSettingPanel);
            app.BeamDiaEditFieldLabel.HorizontalAlignment = 'center';
            app.BeamDiaEditFieldLabel.VerticalAlignment = 'top';
            app.BeamDiaEditFieldLabel.Position = [21 63 62 15];
            app.BeamDiaEditFieldLabel.Text = 'Beam Dia.';

            % Create BeamDiaEditField
            app.BeamDiaEditField = uieditfield(app.FocusingLensesMirrorsSettingPanel, 'numeric');
            app.BeamDiaEditField.Editable = 'off';
            app.BeamDiaEditField.Position = [106 59 46 22];
            app.BeamDiaEditField.Value = 1.759;

            % Create mmLabel_14
            app.mmLabel_14 = uilabel(app.FocusingLensesMirrorsSettingPanel);
            app.mmLabel_14.VerticalAlignment = 'top';
            app.mmLabel_14.Position = [158 63 25 15];
            app.mmLabel_14.Text = 'mm';

            % Create HousingDiaEditFieldLabel
            app.HousingDiaEditFieldLabel = uilabel(app.FocusingLensesMirrorsSettingPanel);
            app.HousingDiaEditFieldLabel.HorizontalAlignment = 'center';
            app.HousingDiaEditFieldLabel.VerticalAlignment = 'top';
            app.HousingDiaEditFieldLabel.Position = [14 22 76 15];
            app.HousingDiaEditFieldLabel.Text = 'Housing Dia.';

            % Create HousingDiaEditField
            app.HousingDiaEditField = uieditfield(app.FocusingLensesMirrorsSettingPanel, 'numeric');
            app.HousingDiaEditField.Limits = [5 25];
            app.HousingDiaEditField.Position = [106 18 46 22];
            app.HousingDiaEditField.Value = 12;

            % Create mmLabel_15
            app.mmLabel_15 = uilabel(app.FocusingLensesMirrorsSettingPanel);
            app.mmLabel_15.VerticalAlignment = 'top';
            app.mmLabel_15.Position = [158 22 25 15];
            app.mmLabel_15.Text = 'mm';

            % Create CarrierFiberSettingPanel
            app.CarrierFiberSettingPanel = uipanel(app.ConfigurationTab);
            app.CarrierFiberSettingPanel.Title = 'Carrier Fiber Setting';
            app.CarrierFiberSettingPanel.BackgroundColor = [1 1 1];
            app.CarrierFiberSettingPanel.FontName = 'MS Sans Serif';
            app.CarrierFiberSettingPanel.Position = [563 465 365 199];

            % Create MFDField_2
            app.MFDField_2 = uieditfield(app.CarrierFiberSettingPanel, 'numeric');
            app.MFDField_2.Editable = 'off';
            app.MFDField_2.Position = [289 142 43 22];
            app.MFDField_2.Value = 200;

            % Create mLabel_2
            app.mLabel_2 = uilabel(app.CarrierFiberSettingPanel);
            app.mLabel_2.VerticalAlignment = 'top';
            app.mLabel_2.Position = [338 146 18 15];
            app.mLabel_2.Text = 'µm';

            % Create NAField_2
            app.NAField_2 = uieditfield(app.CarrierFiberSettingPanel, 'numeric');
            app.NAField_2.ValueChangedFcn = createCallbackFcn(app, @NAField_2ValueChanged, true);
            app.NAField_2.Editable = 'off';
            app.NAField_2.Position = [299 86 33 22];
            app.NAField_2.Value = 0.39;

            % Create CoreDiameterSliderLabel
            app.CoreDiameterSliderLabel = uilabel(app.CarrierFiberSettingPanel);
            app.CoreDiameterSliderLabel.HorizontalAlignment = 'right';
            app.CoreDiameterSliderLabel.VerticalAlignment = 'top';
            app.CoreDiameterSliderLabel.Position = [12 150 85 15];
            app.CoreDiameterSliderLabel.Text = 'Core Diameter';

            % Create CoreDiameterSlider
            app.CoreDiameterSlider = uislider(app.CarrierFiberSettingPanel);
            app.CoreDiameterSlider.Limits = [50 1000];
            app.CoreDiameterSlider.ValueChangedFcn = createCallbackFcn(app, @CoreDiameterSliderValueChanged, true);
            app.CoreDiameterSlider.Position = [124 156 150 3];
            app.CoreDiameterSlider.Value = 200;

            % Create NASlider_2Label
            app.NASlider_2Label = uilabel(app.CarrierFiberSettingPanel);
            app.NASlider_2Label.HorizontalAlignment = 'right';
            app.NASlider_2Label.VerticalAlignment = 'top';
            app.NASlider_2Label.Position = [42 93 25 15];
            app.NASlider_2Label.Text = 'NA';

            % Create NASlider_2
            app.NASlider_2 = uislider(app.CarrierFiberSettingPanel);
            app.NASlider_2.Limits = [0.1 0.5];
            app.NASlider_2.ValueChangedFcn = createCallbackFcn(app, @NASlider_2ValueChanged, true);
            app.NASlider_2.Position = [125 99 150 3];
            app.NASlider_2.Value = 0.39;

            % Create MaximumInjectionAngleEditFieldLabel
            app.MaximumInjectionAngleEditFieldLabel = uilabel(app.CarrierFiberSettingPanel);
            app.MaximumInjectionAngleEditFieldLabel.HorizontalAlignment = 'right';
            app.MaximumInjectionAngleEditFieldLabel.VerticalAlignment = 'top';
            app.MaximumInjectionAngleEditFieldLabel.Position = [129 26 142 15];
            app.MaximumInjectionAngleEditFieldLabel.Text = 'Maximum Injection Angle';

            % Create MaximumInjectionAngleEditField
            app.MaximumInjectionAngleEditField = uieditfield(app.CarrierFiberSettingPanel, 'numeric');
            app.MaximumInjectionAngleEditField.Editable = 'off';
            app.MaximumInjectionAngleEditField.Position = [289 22 43 22];
            app.MaximumInjectionAngleEditField.Value = 23;

            % Create degLabel_6
            app.degLabel_6 = uilabel(app.CarrierFiberSettingPanel);
            app.degLabel_6.VerticalAlignment = 'top';
            app.degLabel_6.Position = [333 26 23 15];
            app.degLabel_6.Text = 'deg';

            % Create PatternCalculationTab
            app.PatternCalculationTab = uitab(app.TabGroup);
            app.PatternCalculationTab.Title = 'Pattern Calculation';
            app.PatternCalculationTab.BackgroundColor = [1 1 1];

            % Create UIAxes
            app.UIAxes = uiaxes(app.PatternCalculationTab);
            title(app.UIAxes, 'Output Pattern')
            xlabel(app.UIAxes, 'X')
            ylabel(app.UIAxes, 'Y')
            app.UIAxes.PlotBoxAspectRatio = [1.10196779964222 1 1];
            app.UIAxes.XGrid = 'on';
            app.UIAxes.YGrid = 'on';
            app.UIAxes.GridAlpha = 0.15;
            app.UIAxes.MinorGridAlpha = 0.25;
            app.UIAxes.Box = 'on';
            app.UIAxes.Position = [48 19 665 615];

            % Create CalculatePatternButton
            app.CalculatePatternButton = uibutton(app.PatternCalculationTab, 'push');
            app.CalculatePatternButton.ButtonPushedFcn = createCallbackFcn(app, @CalculatePatternButtonPushed, true);
            app.CalculatePatternButton.Position = [757 365 108 22];
            app.CalculatePatternButton.Text = 'Calculate Pattern';

            % Create SystemStatusLampLabel
            app.SystemStatusLampLabel = uilabel(app.PatternCalculationTab);
            app.SystemStatusLampLabel.HorizontalAlignment = 'center';
            app.SystemStatusLampLabel.VerticalAlignment = 'top';
            app.SystemStatusLampLabel.Position = [766 519 84 22];
            app.SystemStatusLampLabel.Text = 'System Status';

            % Create SystemStatusLamp
            app.SystemStatusLamp = uilamp(app.PatternCalculationTab);
            app.SystemStatusLamp.Position = [798 496 20 20];
            app.SystemStatusLamp.Color = [0 0 0];

            % Create ScreenDistancemmSliderLabel
            app.ScreenDistancemmSliderLabel = uilabel(app.PatternCalculationTab);
            app.ScreenDistancemmSliderLabel.HorizontalAlignment = 'right';
            app.ScreenDistancemmSliderLabel.Position = [746 465 123 22];
            app.ScreenDistancemmSliderLabel.Text = 'Screen Distance (mm)';

            % Create ScreenDistancemmSlider
            app.ScreenDistancemmSlider = uislider(app.PatternCalculationTab);
            app.ScreenDistancemmSlider.Limits = [15 100];
            app.ScreenDistancemmSlider.ValueChangedFcn = createCallbackFcn(app, @ScreenDistancemmSliderValueChanged, true);
            app.ScreenDistancemmSlider.Position = [733 432 150 3];
            app.ScreenDistancemmSlider.Value = 20;

            % Create ScreenDistanceEditField
            app.ScreenDistanceEditField = uieditfield(app.PatternCalculationTab, 'numeric');
            app.ScreenDistanceEditField.Limits = [15 100];
            app.ScreenDistanceEditField.ValueChangedFcn = createCallbackFcn(app, @ScreenDistanceEditFieldValueChanged, true);
            app.ScreenDistanceEditField.HorizontalAlignment = 'center';
            app.ScreenDistanceEditField.Position = [783 444 55 22];
            app.ScreenDistanceEditField.Value = 20;

            % Create OAMRotationCalculationTab
            app.OAMRotationCalculationTab = uitab(app.TabGroup);
            app.OAMRotationCalculationTab.Title = 'OAM Rotation Calculation';
            app.OAMRotationCalculationTab.BackgroundColor = [1 1 1];

            % Create SystemStatusLamp_2Label
            app.SystemStatusLamp_2Label = uilabel(app.OAMRotationCalculationTab);
            app.SystemStatusLamp_2Label.HorizontalAlignment = 'center';
            app.SystemStatusLamp_2Label.Position = [422 598 83 22];
            app.SystemStatusLamp_2Label.Text = 'System Status';

            % Create SystemStatusLamp_2
            app.SystemStatusLamp_2 = uilamp(app.OAMRotationCalculationTab);
            app.SystemStatusLamp_2.Position = [454 627 20 20];
            app.SystemStatusLamp_2.Color = [0 0 0];

            % Create OffAxisSettingPanel
            app.OffAxisSettingPanel = uipanel(app.OAMRotationCalculationTab);
            app.OffAxisSettingPanel.Title = 'Off-Axis Setting';
            app.OffAxisSettingPanel.BackgroundColor = [1 1 1];
            app.OffAxisSettingPanel.Position = [1 485 927 104];

            % Create XAxismSliderLabel
            app.XAxismSliderLabel = uilabel(app.OffAxisSettingPanel);
            app.XAxismSliderLabel.HorizontalAlignment = 'right';
            app.XAxismSliderLabel.Position = [177 55 68 22];
            app.XAxismSliderLabel.Text = 'X-Axis (μm)';

            % Create XAxismSlider
            app.XAxismSlider = uislider(app.OffAxisSettingPanel);
            app.XAxismSlider.Limits = [-20 20];
            app.XAxismSlider.Position = [108 43 207 3];

            % Create YAxismSliderLabel
            app.YAxismSliderLabel = uilabel(app.OffAxisSettingPanel);
            app.YAxismSliderLabel.HorizontalAlignment = 'right';
            app.YAxismSliderLabel.Position = [482 54 67 22];
            app.YAxismSliderLabel.Text = 'Y-Axis (μm)';

            % Create YAxismSlider
            app.YAxismSlider = uislider(app.OffAxisSettingPanel);
            app.YAxismSlider.Limits = [-20 20];
            app.YAxismSlider.Position = [412 42 207 3];

            % Create CalculateRotationDirectionButton
            app.CalculateRotationDirectionButton = uibutton(app.OffAxisSettingPanel, 'push');
            app.CalculateRotationDirectionButton.ButtonPushedFcn = createCallbackFcn(app, @CalculateRotationDirectionButtonPushed, true);
            app.CalculateRotationDirectionButton.Position = [714 32 164 22];
            app.CalculateRotationDirectionButton.Text = 'Calculate Rotation Direction';

            % Create Channel1Panel
            app.Channel1Panel = uipanel(app.OAMRotationCalculationTab);
            app.Channel1Panel.Title = 'Channel 1';
            app.Channel1Panel.BackgroundColor = [1 1 1];
            app.Channel1Panel.Position = [1 0 186 485];

            % Create ChannelStatusLampLabel
            app.ChannelStatusLampLabel = uilabel(app.Channel1Panel);
            app.ChannelStatusLampLabel.HorizontalAlignment = 'center';
            app.ChannelStatusLampLabel.Position = [48.5 403 88 22];
            app.ChannelStatusLampLabel.Text = 'Channel Status';

            % Create ChannelStatusLamp
            app.ChannelStatusLamp = uilamp(app.Channel1Panel);
            app.ChannelStatusLamp.Position = [83 432 20 20];
            app.ChannelStatusLamp.Color = [0 0 0];

            % Create Image2
            app.Image2 = uiimage(app.Channel1Panel);
            app.Image2.Enable = 'off';
            app.Image2.Position = [43 271 100 100];
            app.Image2.ImageSource = 'cw.png';

            % Create ClockwiseLabel
            app.ClockwiseLabel = uilabel(app.Channel1Panel);
            app.ClockwiseLabel.HorizontalAlignment = 'center';
            app.ClockwiseLabel.Enable = 'off';
            app.ClockwiseLabel.Position = [62.5 250 60 22];
            app.ClockwiseLabel.Text = 'Clockwise';

            % Create Image2_2
            app.Image2_2 = uiimage(app.Channel1Panel);
            app.Image2_2.Enable = 'off';
            app.Image2_2.Position = [43 110 100 100];
            app.Image2_2.ImageSource = 'ccw.png';

            % Create CounterclockwiseLabel
            app.CounterclockwiseLabel = uilabel(app.Channel1Panel);
            app.CounterclockwiseLabel.HorizontalAlignment = 'center';
            app.CounterclockwiseLabel.Enable = 'off';
            app.CounterclockwiseLabel.Position = [43 89 100 22];
            app.CounterclockwiseLabel.Text = 'Counterclockwise';

            % Create Channel3Panel
            app.Channel3Panel = uipanel(app.OAMRotationCalculationTab);
            app.Channel3Panel.Title = 'Channel 3';
            app.Channel3Panel.BackgroundColor = [1 1 1];
            app.Channel3Panel.Position = [370 0 186 485];

            % Create Image2_5
            app.Image2_5 = uiimage(app.Channel3Panel);
            app.Image2_5.Enable = 'off';
            app.Image2_5.Position = [44 271 100 100];
            app.Image2_5.ImageSource = 'cw.png';

            % Create ClockwiseLabel_3
            app.ClockwiseLabel_3 = uilabel(app.Channel3Panel);
            app.ClockwiseLabel_3.HorizontalAlignment = 'center';
            app.ClockwiseLabel_3.Enable = 'off';
            app.ClockwiseLabel_3.Position = [64 250 60 22];
            app.ClockwiseLabel_3.Text = 'Clockwise';

            % Create Image2_6
            app.Image2_6 = uiimage(app.Channel3Panel);
            app.Image2_6.Enable = 'off';
            app.Image2_6.Position = [44 110 100 100];
            app.Image2_6.ImageSource = 'ccw.png';

            % Create CounterclockwiseLabel_3
            app.CounterclockwiseLabel_3 = uilabel(app.Channel3Panel);
            app.CounterclockwiseLabel_3.HorizontalAlignment = 'center';
            app.CounterclockwiseLabel_3.Enable = 'off';
            app.CounterclockwiseLabel_3.Position = [44 89 100 22];
            app.CounterclockwiseLabel_3.Text = 'Counterclockwise';

            % Create ChannelStatusLamp_3Label
            app.ChannelStatusLamp_3Label = uilabel(app.Channel3Panel);
            app.ChannelStatusLamp_3Label.HorizontalAlignment = 'center';
            app.ChannelStatusLamp_3Label.Position = [50 403 88 22];
            app.ChannelStatusLamp_3Label.Text = 'Channel Status';

            % Create ChannelStatusLamp_3
            app.ChannelStatusLamp_3 = uilamp(app.Channel3Panel);
            app.ChannelStatusLamp_3.Position = [84 432 20 20];
            app.ChannelStatusLamp_3.Color = [0 0 0];

            % Create Channel4Panel
            app.Channel4Panel = uipanel(app.OAMRotationCalculationTab);
            app.Channel4Panel.Title = 'Channel 4';
            app.Channel4Panel.BackgroundColor = [1 1 1];
            app.Channel4Panel.Position = [555 0 185 485];

            % Create Image2_7
            app.Image2_7 = uiimage(app.Channel4Panel);
            app.Image2_7.Enable = 'off';
            app.Image2_7.Position = [43 271 100 100];
            app.Image2_7.ImageSource = 'cw.png';

            % Create ClockwiseLabel_4
            app.ClockwiseLabel_4 = uilabel(app.Channel4Panel);
            app.ClockwiseLabel_4.HorizontalAlignment = 'center';
            app.ClockwiseLabel_4.Enable = 'off';
            app.ClockwiseLabel_4.Position = [63 250 60 22];
            app.ClockwiseLabel_4.Text = 'Clockwise';

            % Create Image2_8
            app.Image2_8 = uiimage(app.Channel4Panel);
            app.Image2_8.Enable = 'off';
            app.Image2_8.Position = [43 110 100 100];
            app.Image2_8.ImageSource = 'ccw.png';

            % Create CounterclockwiseLabel_4
            app.CounterclockwiseLabel_4 = uilabel(app.Channel4Panel);
            app.CounterclockwiseLabel_4.HorizontalAlignment = 'center';
            app.CounterclockwiseLabel_4.Enable = 'off';
            app.CounterclockwiseLabel_4.Position = [43 89 100 22];
            app.CounterclockwiseLabel_4.Text = 'Counterclockwise';

            % Create ChannelStatusLamp_4Label
            app.ChannelStatusLamp_4Label = uilabel(app.Channel4Panel);
            app.ChannelStatusLamp_4Label.HorizontalAlignment = 'center';
            app.ChannelStatusLamp_4Label.Position = [49 403 88 22];
            app.ChannelStatusLamp_4Label.Text = 'Channel Status';

            % Create ChannelStatusLamp_4
            app.ChannelStatusLamp_4 = uilamp(app.Channel4Panel);
            app.ChannelStatusLamp_4.Position = [83 432 20 20];
            app.ChannelStatusLamp_4.Color = [0 0 0];

            % Create Channel5Panel
            app.Channel5Panel = uipanel(app.OAMRotationCalculationTab);
            app.Channel5Panel.Title = 'Channel 5';
            app.Channel5Panel.BackgroundColor = [1 1 1];
            app.Channel5Panel.Position = [739 0 189 485];

            % Create Image2_9
            app.Image2_9 = uiimage(app.Channel5Panel);
            app.Image2_9.Enable = 'off';
            app.Image2_9.Position = [45 271 100 100];
            app.Image2_9.ImageSource = 'cw.png';

            % Create ClockwiseLabel_5
            app.ClockwiseLabel_5 = uilabel(app.Channel5Panel);
            app.ClockwiseLabel_5.HorizontalAlignment = 'center';
            app.ClockwiseLabel_5.Enable = 'off';
            app.ClockwiseLabel_5.Position = [65 250 60 22];
            app.ClockwiseLabel_5.Text = 'Clockwise';

            % Create Image2_10
            app.Image2_10 = uiimage(app.Channel5Panel);
            app.Image2_10.Enable = 'off';
            app.Image2_10.Position = [45 110 100 100];
            app.Image2_10.ImageSource = 'ccw.png';

            % Create CounterclockwiseLabel_5
            app.CounterclockwiseLabel_5 = uilabel(app.Channel5Panel);
            app.CounterclockwiseLabel_5.HorizontalAlignment = 'center';
            app.CounterclockwiseLabel_5.Enable = 'off';
            app.CounterclockwiseLabel_5.Position = [45 89 100 22];
            app.CounterclockwiseLabel_5.Text = 'Counterclockwise';

            % Create ChannelStatusLamp_5Label
            app.ChannelStatusLamp_5Label = uilabel(app.Channel5Panel);
            app.ChannelStatusLamp_5Label.HorizontalAlignment = 'center';
            app.ChannelStatusLamp_5Label.Position = [51 403 88 22];
            app.ChannelStatusLamp_5Label.Text = 'Channel Status';

            % Create ChannelStatusLamp_5
            app.ChannelStatusLamp_5 = uilamp(app.Channel5Panel);
            app.ChannelStatusLamp_5.Position = [85 432 20 20];
            app.ChannelStatusLamp_5.Color = [0 0 0];

            % Create Channel2Panel
            app.Channel2Panel = uipanel(app.OAMRotationCalculationTab);
            app.Channel2Panel.Title = 'Channel 2';
            app.Channel2Panel.BackgroundColor = [1 1 1];
            app.Channel2Panel.Position = [186 0 185 485];

            % Create Image2_3
            app.Image2_3 = uiimage(app.Channel2Panel);
            app.Image2_3.Enable = 'off';
            app.Image2_3.Position = [43 271 100 100];
            app.Image2_3.ImageSource = 'cw.png';

            % Create ClockwiseLabel_2
            app.ClockwiseLabel_2 = uilabel(app.Channel2Panel);
            app.ClockwiseLabel_2.HorizontalAlignment = 'center';
            app.ClockwiseLabel_2.Enable = 'off';
            app.ClockwiseLabel_2.Position = [63 250 60 22];
            app.ClockwiseLabel_2.Text = 'Clockwise';

            % Create Image2_4
            app.Image2_4 = uiimage(app.Channel2Panel);
            app.Image2_4.Enable = 'off';
            app.Image2_4.Position = [43 110 100 100];
            app.Image2_4.ImageSource = 'ccw.png';

            % Create CounterclockwiseLabel_2
            app.CounterclockwiseLabel_2 = uilabel(app.Channel2Panel);
            app.CounterclockwiseLabel_2.HorizontalAlignment = 'center';
            app.CounterclockwiseLabel_2.Enable = 'off';
            app.CounterclockwiseLabel_2.Position = [43 89 100 22];
            app.CounterclockwiseLabel_2.Text = 'Counterclockwise';

            % Create ChannelStatusLamp_2Label
            app.ChannelStatusLamp_2Label = uilabel(app.Channel2Panel);
            app.ChannelStatusLamp_2Label.HorizontalAlignment = 'center';
            app.ChannelStatusLamp_2Label.Position = [49 403 88 22];
            app.ChannelStatusLamp_2Label.Text = 'Channel Status';

            % Create ChannelStatusLamp_2
            app.ChannelStatusLamp_2 = uilamp(app.Channel2Panel);
            app.ChannelStatusLamp_2.Position = [83 432 20 20];
            app.ChannelStatusLamp_2.Color = [0 0 0];

            % Create OffAxisParabolicMirrorBasedBCMforSDMPatternCalculationLabel
            app.OffAxisParabolicMirrorBasedBCMforSDMPatternCalculationLabel = uilabel(app.UIFigure);
            app.OffAxisParabolicMirrorBasedBCMforSDMPatternCalculationLabel.FontSize = 18;
            app.OffAxisParabolicMirrorBasedBCMforSDMPatternCalculationLabel.Position = [104 714 795 42];
            app.OffAxisParabolicMirrorBasedBCMforSDMPatternCalculationLabel.Text = {'Parabolic Mirror Based Multiplexer for Spatially Multiplexed'; 'Fiber Optic Communication System'};

            % Create CeSamuelSucsu2015fiteduLabel
            app.CeSamuelSucsu2015fiteduLabel = uilabel(app.UIFigure);
            app.CeSamuelSucsu2015fiteduLabel.HorizontalAlignment = 'right';
            app.CeSamuelSucsu2015fiteduLabel.Position = [743 713 167 42];
            app.CeSamuelSucsu2015fiteduLabel.Text = {'Ce (Samuel) Su'; 'csu2015@fit.edu'};

            % Create Image
            app.Image = uiimage(app.UIFigure);
            app.Image.ScaleMethod = 'scaledown';
            app.Image.Position = [16 703 76 76];
            app.Image.ImageSource = 'Primary_stacked_color.png';

            % Show the figure after all components are created
            app.UIFigure.Visible = 'on';
        end
    end

    % App creation and deletion
    methods (Access = public)

        % Construct app
        function app = SDM_OAM

            % Create UIFigure and components
            createComponents(app)

            % Register the app with App Designer
            registerApp(app, app.UIFigure)

            if nargout == 0
                clear app
            end
        end

        % Code that executes before app deletion
        function delete(app)

            % Delete UIFigure when app is deleted
            delete(app.UIFigure)
        end
    end
end