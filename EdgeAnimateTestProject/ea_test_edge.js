/*jslint */
/*global AdobeEdge: false, window: false, document: false, console:false, alert: false */
(function (compId) {

    "use strict";
    var im='images/',
        aud='media/',
        vid='media/',
        js='js/',
        fonts = {
        },
        opts = {
            'gAudioPreloadPreference': 'auto',
            'gVideoPreloadPreference': 'auto'
        },
        resources = [
        ],
        scripts = [
            js+"strings.js",
            js+"localizeText.js"
        ],
        symbols = {
            "stage": {
                version: "6.0.0",
                minimumCompatibleVersion: "5.0.0",
                build: "6.0.0.400",
                scaleToFit: "both",
                centerStage: "none",
                resizeInstances: false,
                content: {
                    dom: [
                        {
                            id: 'CircleButton',
                            symbolName: 'CircleButton',
                            type: 'rect',
                            rect: ['378', '250', '267', '267', 'auto', 'auto'],
                            userClass: ""
                        },
                        {
                            id: 'CircleButton3',
                            symbolName: 'CircleButton',
                            type: 'rect',
                            rect: ['20px', '11px', 'undefined', 'undefined', 'auto', 'auto'],
                            transform: [[],[],[],['0.79791','0.79791']]
                        },
                        {
                            id: 'CircleButton4',
                            symbolName: 'CircleButton',
                            type: 'rect',
                            rect: ['714px', '384px', 'undefined', 'undefined', 'auto', 'auto'],
                            transform: [[],[],[],['0.53987','0.53987']]
                        },
                        {
                            id: 'CircleButton5',
                            symbolName: 'CircleButton',
                            type: 'rect',
                            rect: ['674px', '76px', 'undefined', 'undefined', 'auto', 'auto'],
                            transform: [[],[],[],['0.79791','0.79791']]
                        },
                        {
                            id: 'CircleButton6',
                            symbolName: 'CircleButton',
                            type: 'rect',
                            rect: ['95px', '440px', 'undefined', 'undefined', 'auto', 'auto'],
                            transform: [[],[],[],['0.45627','0.45627']]
                        },
                        {
                            id: 'Language',
                            type: 'text',
                            rect: ['15px', '729px', 'auto', 'auto', 'auto', 'auto'],
                            text: "<p style=\"margin: 0px;\">​Language</p>",
                            align: "center",
                            font: ['Arial, Helvetica, sans-serif', [24, "px"], "rgba(0,0,0,1.00)", "400", "none", "normal", "break-word", "nowrap"],
                            textStyle: ["", "", "", "", "none"]
                        }
                    ],
                    style: {
                        '${Stage}': {
                            isStage: true,
                            rect: ['null', 'null', '1024px', '768px', 'auto', 'auto'],
                            overflow: 'hidden',
                            fill: ["rgba(255,255,255,1)"]
                        }
                    }
                },
                timeline: {
                    duration: 3468.42578125,
                    autoPlay: true,
                    data: [
                            [ "eid89", "trigger", 250, function executeSymbolFunction(e, data) { this._executeSymbolAction(e, data); }, ['play', '${CircleButton6}', [] ] ],
                            [ "eid90", "trigger", 382.32421875, function executeSymbolFunction(e, data) { this._executeSymbolAction(e, data); }, ['play', '${CircleButton5}', [] ] ],
                            [ "eid93", "trigger", 1051.19921875, function executeSymbolFunction(e, data) { this._executeSymbolAction(e, data); }, ['play', '${CircleButton3}', [] ] ],
                            [ "eid91", "trigger", 1246, function executeSymbolFunction(e, data) { this._executeSymbolAction(e, data); }, ['play', '${CircleButton}', [] ] ],
                            [ "eid92", "trigger", 1353.42578125, function executeSymbolFunction(e, data) { this._executeSymbolAction(e, data); }, ['play', '${CircleButton4}', [] ] ]
                    ]
                }
            },
            "CircleButton": {
                version: "6.0.0",
                minimumCompatibleVersion: "5.0.0",
                build: "6.0.0.400",
                scaleToFit: "none",
                centerStage: "none",
                resizeInstances: false,
                content: {
                    dom: [
                        {
                            rect: ['0px', '0px', '267px', '267px', 'auto', 'auto'],
                            borderRadius: ['50%', '50%', '50%', '50%'],
                            id: 'Ellipse',
                            stroke: [0, 'rgb(0, 0, 0)', 'none'],
                            type: 'ellipse',
                            fill: ['rgba(205,48,48,1.00)']
                        },
                        {
                            textStyle: ['', '', '', '', 'none'],
                            rect: ['0px', '120px', '267px', '28px', 'auto', 'auto'],
                            font: ['Arial, Helvetica, sans-serif', [24, 'px'], 'rgba(255,255,255,1)', '400', 'none', 'normal', 'break-word', ''],
                            align: 'center',
                            id: 'Tap',
                            opacity: '1',
                            text: '<p style=\"margin: 0px;\">​Tap</p>',
                            type: 'text'
                        }
                    ],
                    style: {
                        '${symbolSelector}': {
                            isStage: 'true',
                            rect: [undefined, undefined, '267px', '267px']
                        }
                    }
                },
                timeline: {
                    duration: 2115,
                    autoPlay: false,
                    data: [
                        [
                            "eid44",
                            "left",
                            0,
                            0,
                            "linear",
                            "${Ellipse}",
                            '0px',
                            '0px'
                        ],
                        [
                            "eid43",
                            "scaleY",
                            0,
                            1000,
                            "easeInOutQuad",
                            "${Ellipse}",
                            '1',
                            '0.8'
                        ],
                        [
                            "eid41",
                            "scaleY",
                            1000,
                            1000,
                            "easeInOutQuad",
                            "${Ellipse}",
                            '0.8',
                            '1'
                        ],
                        [
                            "eid38",
                            "scaleX",
                            0,
                            1000,
                            "easeInOutQuad",
                            "${Ellipse}",
                            '1',
                            '0.8'
                        ],
                        [
                            "eid40",
                            "scaleX",
                            1000,
                            1000,
                            "easeInOutQuad",
                            "${Ellipse}",
                            '0.8',
                            '1'
                        ],
                        [
                            "eid101",
                            "opacity",
                            0,
                            1000,
                            "easeInQuad",
                            "${Tap}",
                            '1',
                            '0.13112931910569'
                        ],
                        [
                            "eid102",
                            "opacity",
                            1000,
                            1000,
                            "easeInQuad",
                            "${Tap}",
                            '0.131129',
                            '1'
                        ],
                        [
                            "eid57",
                            "top",
                            0,
                            0,
                            "easeInQuad",
                            "${Ellipse}",
                            '0px',
                            '0px'
                        ]
                    ]
                }
            }
        };

    AdobeEdge.registerCompositionDefn(compId, symbols, fonts, scripts, resources, opts);

    if (!window.edge_authoring_mode) AdobeEdge.getComposition(compId).load("ea_test_edgeActions.js");
})("EDGE-274302398");
