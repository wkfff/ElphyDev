�
 TFORM1 0�  TPF0TForm1Form1Left�Top� WidthGHeightXCaption	SMTP TestColor	clBtnFaceFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameMS Sans Serif
Font.Style OldCreateOrder	PositionpoScreenCenterOnClose	FormCloseOnCreate
FormCreate	OnDestroyFormDestroyOnShowFormShowPixelsPerInch`
TextHeight TMemoMsgMemoLeft Top� Width?HeightxHint#Enter the message text in this memoAlignalTopFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameCourier New
Font.Style Lines.StringsMsgMemo 
ParentFontParentShowHint
ScrollBarsssBothShowHint	TabOrder   TMemoDisplayMemoLeft Top�Width?Height� HintThis memo shows info messagesAlignalClientFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameCourier New
Font.Style Lines.StringsDisplayMemo 
ParentFontParentShowHintReadOnly	
ScrollBarsssBothShowHint	TabOrder  TPanel
ToolsPanelLeft Top Width?Height� AlignalTopTabOrder TLabelLabel1LeftTopWidth7HeightCaption	SMTP Host  TLabelLabel2Left6Top$WidthHeightCaptionFrom  TLabelLabel3Left� Top$WidthHeightCaptionTo  TLabelSubjectLeft)TopRWidth$HeightCaptionSubject  TLabelLabel4Left� TopWidthHeightCaptionPort  TLabelLabel5LeftTop� WidthBHeightCaptionMessage text:  TLabelLabel9LeftToplWidth0HeightCaptionUsername  TLabelLabel10Left� ToplWidthHeightCaptionPass  TLabelLabel11Left	Top� WidthDHeightCaptionAuthentication  TLabelLabel12Left@Top<WidthHeightCaptionCc  TLabelLabel13Left� Top<WidthHeightCaptionBcc  TLabelLabel14Left� TopTWidthHeightCaptionPriority  TEditHostEditLeftPTopWidthyHeightHint"Mail server hostname or IP addressParentShowHintShowHint	TabOrder TextHostEdit  TEditFromEditLeftPTop WidthyHeightHintAuthor's EMailParentShowHintShowHint	TabOrderTextFromEdit  TEditToEditLeft� Top WidthyHeightHint$Destinators, delimited by semicolonsParentShowHintShowHint	TabOrderTextToEdit  TEditSubjectEditLeftPTopPWidthyHeightHintMessage subjectParentShowHintShowHint	TabOrderTextSubjectEdit  TEditPortEditLeft� TopWidthyHeightHint!Mail server port (should be smtp)ParentShowHintShowHint	TabOrderTextPortEdit  TButtonClearDisplayButtonLeft�TopXWidth`HeightHintClear info message memoCaptionClear &InfoParentShowHintShowHint	TabOrderOnClickClearDisplayButtonClick  TButtonConnectButtonLeftpTopWidth`HeightHintConnect to the mail serverCaptionConnectParentShowHintShowHint	TabOrderOnClickConnectButtonClick  TButton
HeloButtonLeftpTopWidth`HeightHintSend the signon messageCaptionHeloParentShowHintShowHint	TabOrderOnClickHeloButtonClick  TButtonMailFromButtonLeftpTopXWidth`HeightHintSend the mail originatorCaptionMailFromParentShowHintShowHint	TabOrderOnClickMailFromButtonClick  TButtonRcptToButtonLeft�TopWidth`HeightHintSend the mail recipentsCaptionRcptToParentShowHintShowHint	TabOrderOnClickRcptToButtonClick  TButton
DataButtonLeft�TopWidth`HeightHint!Send mail text and attached filesCaptionDataParentShowHintShowHint	TabOrderOnClickDataButtonClick  TButton
QuitButtonLeft�Top0Width`HeightHintQuit mail serverCaptionQuitParentShowHintShowHint	TabOrderOnClickQuitButtonClick  TEditUsernameEditLeftPTophWidthyHeightTabOrderTextUsernameEdit  TEditPasswordEditLeft� TophWidthyHeightTabOrder	TextPasswordEdit  	TComboBoxAuthComboBoxLeftPTop� WidthyHeightStylecsDropDownList
ItemHeightTabOrder
Items.StringsNonePlainLoginCramMD5CarmSHA1
AutoSelect   TButton
EhloButtonLeftpTop0Width`HeightCaptionEhloTabOrderOnClickEhloButtonClick  TButton
AuthButtonLeftpTopDWidth`HeightCaptionAuthTabOrderOnClickAuthButtonClick  TEditCcEditLeftPTop8WidthyHeightTabOrderTextCcEdit  TEditBccEditLeft� Top8WidthyHeightTabOrderTextBccEdit  TButtonAllInOneButtonLeft�TopDWidth`HeightHintNConnect, Helo, MailFrom, RcptTo, Data and Quit all chained in a single action.Caption
All In OneParentShowHintShowHint	TabOrderOnClickAllInOneButtonClick  	TComboBoxPriorityComboBoxLeft� TopPWidthyHeightStylecsDropDownList
ItemHeightTabOrderItems.Strings urgentnormal
non-urgent   	TCheckBoxConfirmCheckBoxLeft� Top� Width7HeightCaptionConfirmTabOrder  TPanelPanel1LeftpToppWidth� HeightF
BevelOuterbvNoneBorderStylebsSingleCaptionPanel1Ctl3DParentColor	ParentCtl3DTabOrder TLabelLabel8LeftTopWidth� Height4Caption�Please add in your website a link to http://www.arkadia.com or send me an email to svanderclock@arkadia.com if you like this component!Font.CharsetDEFAULT_CHARSET
Font.ColorclTealFont.Height�	Font.NameMS Sans Serif
Font.Style 
ParentFontWordWrap	    TPanelAttachPanelLeft Top7Width?HeightAlignalTopTabOrder TLabelLabel6LeftTopWidthCHeightCaptionAttached files:   TMemoFileAttachMemoLeft TopHWidth?Height1Hint*Enter the attached file path, one per lineAlignalTopFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameCourier New
Font.Style Lines.StringsFileAttachMemo 
ParentFontParentShowHint
ScrollBars
ssVerticalShowHint	TabOrder  TPanel	InfoPanelLeft TopyWidth?HeightAlignalTopTabOrder TLabelLabel7LeftTopWidthGHeightCaptionInfo messages:    