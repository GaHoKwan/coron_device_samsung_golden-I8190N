.class public Lcom/android/server/sec/ClippedDataPickerDialog;
.super Landroid/app/Dialog;
.source "ClippedDataPickerDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/sec/ClippedDataPickerDialog$ClipboardWorkingFormUiInterfaceImp;,
        Lcom/android/server/sec/ClippedDataPickerDialog$ClipAdapter;,
        Lcom/android/server/sec/ClippedDataPickerDialog$ClearConfirmDialog;
    }
.end annotation


# static fields
.field static CHILD_COUNT:I = 0x0

.field static final LOGTAG:Ljava/lang/String; = "ClipBoardDialog"


# instance fields
.field final ADD_ITEM:I

.field final MAX_PROTECTED_COUNT:I

.field mAdapter:Landroid/widget/BaseAdapter;

.field private mAddScenario:Z

.field private mBroadCastListener:Landroid/content/BroadcastReceiver;

.field private mButtonClick:Landroid/view/View$OnClickListener;

.field private mCalledDismissIntentFromSIPFlag:Z

.field private mCbm:Landroid/sec/clipboard/ClipboardExManager;

.field mClearButton:Landroid/widget/Button;

.field mClearDialog:Lcom/android/server/sec/ClippedDataPickerDialog$ClearConfirmDialog;

.field private mClipBoardLandscapeHeight:I

.field private mClipBoardPanelLandscapeHeight:I

.field private mClipBoardPanelPortraitHeight:I

.field private mClipBoardPortraitHeight:I

.field private mClipDrawer:Lcom/android/server/sec/TwSlidingDrawer;

.field private mClipboardDataList:Landroid/sec/clipboard/data/IClipboardDataList;

.field private mClipboardDataUiEvent:Landroid/sec/clipboard/IClipboardDataUiEvent;

.field private mClipboardWorkingFormUiInterface:Lcom/android/server/sec/ClippedDataPickerDialog$ClipboardWorkingFormUiInterfaceImp;

.field mContentPanel:Landroid/widget/LinearLayout;

.field private mContext:Landroid/content/Context;

.field private mCurrentOrientation:I

.field private mCurrentPasteEvent:Landroid/sec/clipboard/IClipboardDataPasteEvent;

.field private mCurrentTargetDataType:I

.field private mDataCount:I

.field final mDeleteAnimation:Landroid/view/animation/Animation$AnimationListener;

.field final mDismissIntentFromSIP:Ljava/lang/String;

.field final mDismissIntentFromStatusBar:Ljava/lang/String;

.field mGrid:Lcom/android/server/sec/ClippedDataPickerGridView;

.field mGridItemHeight:I

.field mGridItemWidth:I

.field mGridViewAniGoingOn:Z

.field mHTMLImageHeight:I

.field mHTMLImageWidth:I

.field private mIsInstalledMemo:Z

.field private mIsInstalledSMemo:Z

.field private mIsInstalledSNote:Z

.field private mIsProtect:Z

.field mIsShowingContextmenu:Z

.field private mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mSelectedIndex:I

.field mShowingMenu:Landroid/view/Menu;

.field final mTextViewMaxLineLand:I

.field final mTextViewMaxLinePort:I

.field final mTmpInsets:Landroid/inputmethodservice/InputMethodService$Insets;

.field final mTmpLocation:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 190
    const/4 v0, 0x0

    sput v0, Lcom/android/server/sec/ClippedDataPickerDialog;->CHILD_COUNT:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    const/4 v4, 0x4

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 335
    const v0, 0x1030323

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 150
    iput-object v2, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mGrid:Lcom/android/server/sec/ClippedDataPickerGridView;

    .line 151
    iput-object v2, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mAdapter:Landroid/widget/BaseAdapter;

    .line 154
    iput-boolean v1, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mGridViewAniGoingOn:Z

    .line 155
    iput v1, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mDataCount:I

    .line 156
    iput-boolean v1, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mAddScenario:Z

    .line 158
    iput v1, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mGridItemWidth:I

    .line 159
    iput v1, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mGridItemHeight:I

    .line 161
    iput v1, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mHTMLImageWidth:I

    .line 162
    iput v1, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mHTMLImageHeight:I

    .line 163
    iput v4, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mTextViewMaxLinePort:I

    .line 164
    iput v4, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mTextViewMaxLineLand:I

    .line 166
    iput-object v2, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mCbm:Landroid/sec/clipboard/ClipboardExManager;

    .line 167
    iput-object v2, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mClipboardDataUiEvent:Landroid/sec/clipboard/IClipboardDataUiEvent;

    .line 168
    iput-object v2, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mClipboardWorkingFormUiInterface:Lcom/android/server/sec/ClippedDataPickerDialog$ClipboardWorkingFormUiInterfaceImp;

    .line 169
    iput-object v2, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mClipboardDataList:Landroid/sec/clipboard/data/IClipboardDataList;

    .line 173
    new-instance v0, Landroid/inputmethodservice/InputMethodService$Insets;

    invoke-direct {v0}, Landroid/inputmethodservice/InputMethodService$Insets;-><init>()V

    iput-object v0, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mTmpInsets:Landroid/inputmethodservice/InputMethodService$Insets;

    .line 174
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mTmpLocation:[I

    .line 178
    iput v1, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mClipBoardPortraitHeight:I

    .line 179
    iput v1, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mClipBoardLandscapeHeight:I

    .line 180
    iput v1, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mClipBoardPanelPortraitHeight:I

    .line 181
    iput v1, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mClipBoardPanelLandscapeHeight:I

    .line 182
    iput v3, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mCurrentOrientation:I

    .line 184
    iput v1, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mCurrentTargetDataType:I

    .line 185
    iput-object v2, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mCurrentPasteEvent:Landroid/sec/clipboard/IClipboardDataPasteEvent;

    .line 186
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mSelectedIndex:I

    .line 188
    iput-boolean v1, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mIsProtect:Z

    .line 189
    iput v3, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->ADD_ITEM:I

    .line 192
    const/16 v0, 0xa

    iput v0, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->MAX_PROTECTED_COUNT:I

    .line 195
    const-string v0, "DismissClipboardDialogFromPhoneStatusBar"

    iput-object v0, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mDismissIntentFromStatusBar:Ljava/lang/String;

    .line 196
    const-string v0, "DismissClipboardDialogFromIMMService"

    iput-object v0, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mDismissIntentFromSIP:Ljava/lang/String;

    .line 197
    iput-boolean v1, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mCalledDismissIntentFromSIPFlag:Z

    .line 199
    iput-boolean v1, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mIsInstalledSMemo:Z

    .line 200
    iput-boolean v1, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mIsInstalledSNote:Z

    .line 201
    iput-boolean v1, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mIsInstalledMemo:Z

    .line 203
    new-instance v0, Lcom/android/server/sec/ClippedDataPickerDialog$1;

    invoke-direct {v0, p0}, Lcom/android/server/sec/ClippedDataPickerDialog$1;-><init>(Lcom/android/server/sec/ClippedDataPickerDialog;)V

    iput-object v0, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mButtonClick:Landroid/view/View$OnClickListener;

    .line 215
    iput-object v2, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mClearButton:Landroid/widget/Button;

    .line 216
    iput-object v2, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mClearDialog:Lcom/android/server/sec/ClippedDataPickerDialog$ClearConfirmDialog;

    .line 519
    new-instance v0, Lcom/android/server/sec/ClippedDataPickerDialog$4;

    invoke-direct {v0, p0}, Lcom/android/server/sec/ClippedDataPickerDialog$4;-><init>(Lcom/android/server/sec/ClippedDataPickerDialog;)V

    iput-object v0, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mBroadCastListener:Landroid/content/BroadcastReceiver;

    .line 605
    new-instance v0, Lcom/android/server/sec/ClippedDataPickerDialog$5;

    invoke-direct {v0, p0}, Lcom/android/server/sec/ClippedDataPickerDialog$5;-><init>(Lcom/android/server/sec/ClippedDataPickerDialog;)V

    iput-object v0, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 671
    iput-boolean v1, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mIsShowingContextmenu:Z

    .line 765
    new-instance v0, Lcom/android/server/sec/ClippedDataPickerDialog$6;

    invoke-direct {v0, p0}, Lcom/android/server/sec/ClippedDataPickerDialog$6;-><init>(Lcom/android/server/sec/ClippedDataPickerDialog;)V

    iput-object v0, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mDeleteAnimation:Landroid/view/animation/Animation$AnimationListener;

    .line 336
    iput-object p1, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mContext:Landroid/content/Context;

    .line 338
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/sec/clipboard/ClipboardExManager;)V
    .locals 5
    .parameter "context"
    .parameter "mgr"

    .prologue
    const/4 v4, 0x4

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 341
    const v0, 0x1030323

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 150
    iput-object v2, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mGrid:Lcom/android/server/sec/ClippedDataPickerGridView;

    .line 151
    iput-object v2, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mAdapter:Landroid/widget/BaseAdapter;

    .line 154
    iput-boolean v1, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mGridViewAniGoingOn:Z

    .line 155
    iput v1, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mDataCount:I

    .line 156
    iput-boolean v1, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mAddScenario:Z

    .line 158
    iput v1, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mGridItemWidth:I

    .line 159
    iput v1, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mGridItemHeight:I

    .line 161
    iput v1, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mHTMLImageWidth:I

    .line 162
    iput v1, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mHTMLImageHeight:I

    .line 163
    iput v4, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mTextViewMaxLinePort:I

    .line 164
    iput v4, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mTextViewMaxLineLand:I

    .line 166
    iput-object v2, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mCbm:Landroid/sec/clipboard/ClipboardExManager;

    .line 167
    iput-object v2, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mClipboardDataUiEvent:Landroid/sec/clipboard/IClipboardDataUiEvent;

    .line 168
    iput-object v2, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mClipboardWorkingFormUiInterface:Lcom/android/server/sec/ClippedDataPickerDialog$ClipboardWorkingFormUiInterfaceImp;

    .line 169
    iput-object v2, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mClipboardDataList:Landroid/sec/clipboard/data/IClipboardDataList;

    .line 173
    new-instance v0, Landroid/inputmethodservice/InputMethodService$Insets;

    invoke-direct {v0}, Landroid/inputmethodservice/InputMethodService$Insets;-><init>()V

    iput-object v0, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mTmpInsets:Landroid/inputmethodservice/InputMethodService$Insets;

    .line 174
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mTmpLocation:[I

    .line 178
    iput v1, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mClipBoardPortraitHeight:I

    .line 179
    iput v1, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mClipBoardLandscapeHeight:I

    .line 180
    iput v1, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mClipBoardPanelPortraitHeight:I

    .line 181
    iput v1, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mClipBoardPanelLandscapeHeight:I

    .line 182
    iput v3, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mCurrentOrientation:I

    .line 184
    iput v1, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mCurrentTargetDataType:I

    .line 185
    iput-object v2, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mCurrentPasteEvent:Landroid/sec/clipboard/IClipboardDataPasteEvent;

    .line 186
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mSelectedIndex:I

    .line 188
    iput-boolean v1, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mIsProtect:Z

    .line 189
    iput v3, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->ADD_ITEM:I

    .line 192
    const/16 v0, 0xa

    iput v0, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->MAX_PROTECTED_COUNT:I

    .line 195
    const-string v0, "DismissClipboardDialogFromPhoneStatusBar"

    iput-object v0, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mDismissIntentFromStatusBar:Ljava/lang/String;

    .line 196
    const-string v0, "DismissClipboardDialogFromIMMService"

    iput-object v0, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mDismissIntentFromSIP:Ljava/lang/String;

    .line 197
    iput-boolean v1, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mCalledDismissIntentFromSIPFlag:Z

    .line 199
    iput-boolean v1, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mIsInstalledSMemo:Z

    .line 200
    iput-boolean v1, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mIsInstalledSNote:Z

    .line 201
    iput-boolean v1, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mIsInstalledMemo:Z

    .line 203
    new-instance v0, Lcom/android/server/sec/ClippedDataPickerDialog$1;

    invoke-direct {v0, p0}, Lcom/android/server/sec/ClippedDataPickerDialog$1;-><init>(Lcom/android/server/sec/ClippedDataPickerDialog;)V

    iput-object v0, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mButtonClick:Landroid/view/View$OnClickListener;

    .line 215
    iput-object v2, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mClearButton:Landroid/widget/Button;

    .line 216
    iput-object v2, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mClearDialog:Lcom/android/server/sec/ClippedDataPickerDialog$ClearConfirmDialog;

    .line 519
    new-instance v0, Lcom/android/server/sec/ClippedDataPickerDialog$4;

    invoke-direct {v0, p0}, Lcom/android/server/sec/ClippedDataPickerDialog$4;-><init>(Lcom/android/server/sec/ClippedDataPickerDialog;)V

    iput-object v0, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mBroadCastListener:Landroid/content/BroadcastReceiver;

    .line 605
    new-instance v0, Lcom/android/server/sec/ClippedDataPickerDialog$5;

    invoke-direct {v0, p0}, Lcom/android/server/sec/ClippedDataPickerDialog$5;-><init>(Lcom/android/server/sec/ClippedDataPickerDialog;)V

    iput-object v0, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 671
    iput-boolean v1, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mIsShowingContextmenu:Z

    .line 765
    new-instance v0, Lcom/android/server/sec/ClippedDataPickerDialog$6;

    invoke-direct {v0, p0}, Lcom/android/server/sec/ClippedDataPickerDialog$6;-><init>(Lcom/android/server/sec/ClippedDataPickerDialog;)V

    iput-object v0, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mDeleteAnimation:Landroid/view/animation/Animation$AnimationListener;

    .line 342
    iput-object p1, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mContext:Landroid/content/Context;

    .line 344
    iput-object p2, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mCbm:Landroid/sec/clipboard/ClipboardExManager;

    .line 345
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/sec/ClippedDataPickerDialog;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 144
    iget-object v0, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/sec/ClippedDataPickerDialog;)Landroid/sec/clipboard/ClipboardExManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 144
    iget-object v0, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mCbm:Landroid/sec/clipboard/ClipboardExManager;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/server/sec/ClippedDataPickerDialog;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 144
    iget v0, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mCurrentTargetDataType:I

    return v0
.end method

.method static synthetic access$1100(Lcom/android/server/sec/ClippedDataPickerDialog;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 144
    iget v0, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mCurrentOrientation:I

    return v0
.end method

.method static synthetic access$1200(Lcom/android/server/sec/ClippedDataPickerDialog;)Landroid/sec/clipboard/IClipboardDataPasteEvent;
    .locals 1
    .parameter "x0"

    .prologue
    .line 144
    iget-object v0, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mCurrentPasteEvent:Landroid/sec/clipboard/IClipboardDataPasteEvent;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/server/sec/ClippedDataPickerDialog;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 144
    iget v0, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mDataCount:I

    return v0
.end method

.method static synthetic access$1302(Lcom/android/server/sec/ClippedDataPickerDialog;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 144
    iput p1, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mDataCount:I

    return p1
.end method

.method static synthetic access$1400(Lcom/android/server/sec/ClippedDataPickerDialog;)Lcom/android/server/sec/TwSlidingDrawer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 144
    iget-object v0, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mClipDrawer:Lcom/android/server/sec/TwSlidingDrawer;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/sec/ClippedDataPickerDialog;I)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 144
    invoke-direct {p0, p1}, Lcom/android/server/sec/ClippedDataPickerDialog;->isCheckProtectedItem(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/android/server/sec/ClippedDataPickerDialog;)Landroid/sec/clipboard/IClipboardDataUiEvent;
    .locals 1
    .parameter "x0"

    .prologue
    .line 144
    iget-object v0, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mClipboardDataUiEvent:Landroid/sec/clipboard/IClipboardDataUiEvent;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/server/sec/ClippedDataPickerDialog;Landroid/sec/clipboard/IClipboardDataUiEvent;)Landroid/sec/clipboard/IClipboardDataUiEvent;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 144
    iput-object p1, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mClipboardDataUiEvent:Landroid/sec/clipboard/IClipboardDataUiEvent;

    return-object p1
.end method

.method static synthetic access$600(Lcom/android/server/sec/ClippedDataPickerDialog;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 144
    iget-boolean v0, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mCalledDismissIntentFromSIPFlag:Z

    return v0
.end method

.method static synthetic access$602(Lcom/android/server/sec/ClippedDataPickerDialog;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 144
    iput-boolean p1, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mCalledDismissIntentFromSIPFlag:Z

    return p1
.end method

.method static synthetic access$700(Lcom/android/server/sec/ClippedDataPickerDialog;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 144
    iget v0, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mSelectedIndex:I

    return v0
.end method

.method static synthetic access$800(Lcom/android/server/sec/ClippedDataPickerDialog;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 144
    iget-boolean v0, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mAddScenario:Z

    return v0
.end method

.method static synthetic access$802(Lcom/android/server/sec/ClippedDataPickerDialog;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 144
    iput-boolean p1, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mAddScenario:Z

    return p1
.end method

.method static synthetic access$900(Lcom/android/server/sec/ClippedDataPickerDialog;)Landroid/sec/clipboard/data/IClipboardDataList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 144
    iget-object v0, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mClipboardDataList:Landroid/sec/clipboard/data/IClipboardDataList;

    return-object v0
.end method

.method static synthetic access$902(Lcom/android/server/sec/ClippedDataPickerDialog;Landroid/sec/clipboard/data/IClipboardDataList;)Landroid/sec/clipboard/data/IClipboardDataList;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 144
    iput-object p1, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mClipboardDataList:Landroid/sec/clipboard/data/IClipboardDataList;

    return-object p1
.end method

.method private isCheckProtectedItem(I)Z
    .locals 4
    .parameter "item"

    .prologue
    .line 622
    const/4 v2, 0x0

    .line 625
    .local v2, isProtected:Z
    :try_start_0
    iget-object v3, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mClipboardDataList:Landroid/sec/clipboard/data/IClipboardDataList;

    invoke-interface {v3, p1}, Landroid/sec/clipboard/data/IClipboardDataList;->getItem(I)Landroid/sec/clipboard/data/ClipboardData;

    move-result-object v0

    .line 626
    .local v0, data:Landroid/sec/clipboard/data/ClipboardData;
    if-eqz v0, :cond_0

    .line 627
    invoke-virtual {v0}, Landroid/sec/clipboard/data/ClipboardData;->GetProtectState()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    :cond_0
    move v3, v2

    .line 634
    .end local v0           #data:Landroid/sec/clipboard/data/ClipboardData;
    :goto_0
    return v3

    .line 629
    :catch_0
    move-exception v1

    .line 630
    .local v1, e:Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 631
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private isProtectedPossible()Z
    .locals 6

    .prologue
    const/16 v5, 0xa

    const/4 v3, 0x0

    .line 640
    sget v4, Lcom/android/server/sec/ClippedDataPickerDialog;->CHILD_COUNT:I

    if-le v4, v5, :cond_1

    .line 642
    const/4 v2, 0x0

    .line 644
    .local v2, protectedCount:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    sget v4, Lcom/android/server/sec/ClippedDataPickerDialog;->CHILD_COUNT:I

    if-ge v1, v4, :cond_1

    .line 648
    :try_start_0
    iget-object v4, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mClipboardDataList:Landroid/sec/clipboard/data/IClipboardDataList;

    invoke-interface {v4, v1}, Landroid/sec/clipboard/data/IClipboardDataList;->getItem(I)Landroid/sec/clipboard/data/ClipboardData;

    move-result-object v4

    invoke-virtual {v4}, Landroid/sec/clipboard/data/ClipboardData;->GetProtectState()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v4

    if-eqz v4, :cond_0

    .line 650
    add-int/lit8 v2, v2, 0x1

    .line 652
    if-lt v2, v5, :cond_0

    .line 667
    .end local v1           #i:I
    .end local v2           #protectedCount:I
    :goto_1
    return v3

    .line 655
    .restart local v1       #i:I
    .restart local v2       #protectedCount:I
    :catch_0
    move-exception v0

    .line 657
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1

    .line 660
    .end local v0           #e:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 661
    .local v0, e:Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_1

    .line 644
    .end local v0           #e:Ljava/lang/NullPointerException;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 667
    .end local v1           #i:I
    .end local v2           #protectedCount:I
    :cond_1
    const/4 v3, 0x1

    goto :goto_1
.end method


# virtual methods
.method public IsSetProtectAction(I)V
    .locals 10
    .parameter "selectItem"

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 997
    :try_start_0
    iget-object v7, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mClipboardDataList:Landroid/sec/clipboard/data/IClipboardDataList;

    invoke-interface {v7, p1}, Landroid/sec/clipboard/data/IClipboardDataList;->getItem(I)Landroid/sec/clipboard/data/ClipboardData;

    move-result-object v0

    .line 998
    .local v0, data:Landroid/sec/clipboard/data/ClipboardData;
    invoke-virtual {v0}, Landroid/sec/clipboard/data/ClipboardData;->GetProtectState()Z

    move-result v4

    .line 999
    .local v4, isProtected:Z
    if-nez v4, :cond_0

    move v4, v5

    .line 1002
    :goto_0
    if-eqz v4, :cond_1

    invoke-direct {p0}, Lcom/android/server/sec/ClippedDataPickerDialog;->isProtectedPossible()Z

    move-result v5

    if-nez v5, :cond_1

    .line 1003
    invoke-virtual {p0}, Lcom/android/server/sec/ClippedDataPickerDialog;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {p0}, Lcom/android/server/sec/ClippedDataPickerDialog;->getContext()Landroid/content/Context;

    move-result-object v6

    const v7, 0x104065d

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    const/16 v9, 0xa

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    .line 1041
    .end local v0           #data:Landroid/sec/clipboard/data/ClipboardData;
    .end local v4           #isProtected:Z
    :goto_1
    return-void

    .restart local v0       #data:Landroid/sec/clipboard/data/ClipboardData;
    .restart local v4       #isProtected:Z
    :cond_0
    move v4, v6

    .line 999
    goto :goto_0

    .line 1008
    :cond_1
    invoke-virtual {v0, v4}, Landroid/sec/clipboard/data/ClipboardData;->SetProtectState(Z)V

    .line 1011
    const/4 v3, 0x1

    .line 1012
    .local v3, isAllDisabled:Z
    const/4 v2, 0x0

    .local v2, i:I
    :goto_2
    iget v5, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mDataCount:I

    if-ge v2, v5, :cond_3

    .line 1013
    invoke-direct {p0, v2}, Lcom/android/server/sec/ClippedDataPickerDialog;->isCheckProtectedItem(I)Z

    move-result v5

    if-nez v5, :cond_4

    .line 1014
    sget-boolean v5, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v5, :cond_2

    const-string v5, "ClipboardServiceEx"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "some item is not unlocked...index :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1015
    :cond_2
    const/4 v3, 0x0

    .line 1020
    :cond_3
    if-eqz v3, :cond_5

    .line 1021
    iget-object v5, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mClipDrawer:Lcom/android/server/sec/TwSlidingDrawer;

    new-instance v6, Lcom/android/server/sec/ClippedDataPickerDialog$11;

    invoke-direct {v6, p0}, Lcom/android/server/sec/ClippedDataPickerDialog$11;-><init>(Lcom/android/server/sec/ClippedDataPickerDialog;)V

    invoke-virtual {v5, v6}, Lcom/android/server/sec/TwSlidingDrawer;->post(Ljava/lang/Runnable;)Z

    .line 1034
    :goto_3
    iget-object v5, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mClipboardDataList:Landroid/sec/clipboard/data/IClipboardDataList;

    invoke-interface {v5, p1, v0}, Landroid/sec/clipboard/data/IClipboardDataList;->updateData(ILandroid/sec/clipboard/data/ClipboardData;)Z

    .line 1035
    iget-object v5, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mAdapter:Landroid/widget/BaseAdapter;

    invoke-virtual {v5}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    .line 1036
    .end local v0           #data:Landroid/sec/clipboard/data/ClipboardData;
    .end local v2           #i:I
    .end local v3           #isAllDisabled:Z
    .end local v4           #isProtected:Z
    :catch_0
    move-exception v1

    .line 1037
    .local v1, e:Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1

    .line 1012
    .end local v1           #e:Landroid/os/RemoteException;
    .restart local v0       #data:Landroid/sec/clipboard/data/ClipboardData;
    .restart local v2       #i:I
    .restart local v3       #isAllDisabled:Z
    .restart local v4       #isProtected:Z
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 1027
    :cond_5
    :try_start_1
    iget-object v5, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mClipDrawer:Lcom/android/server/sec/TwSlidingDrawer;

    new-instance v6, Lcom/android/server/sec/ClippedDataPickerDialog$12;

    invoke-direct {v6, p0}, Lcom/android/server/sec/ClippedDataPickerDialog$12;-><init>(Lcom/android/server/sec/ClippedDataPickerDialog;)V

    invoke-virtual {v5, v6}, Lcom/android/server/sec/TwSlidingDrawer;->post(Ljava/lang/Runnable;)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    .line 1038
    .end local v0           #data:Landroid/sec/clipboard/data/ClipboardData;
    .end local v2           #i:I
    .end local v3           #isAllDisabled:Z
    .end local v4           #isProtected:Z
    :catch_1
    move-exception v1

    .line 1039
    .local v1, e:Ljava/lang/NullPointerException;
    invoke-virtual {v1}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_1
.end method

.method createClearConfirmDialog(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 220
    new-instance v0, Lcom/android/server/sec/ClippedDataPickerDialog$ClearConfirmDialog;

    iget-object v1, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/android/server/sec/ClippedDataPickerDialog$ClearConfirmDialog;-><init>(Lcom/android/server/sec/ClippedDataPickerDialog;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mClearDialog:Lcom/android/server/sec/ClippedDataPickerDialog$ClearConfirmDialog;

    .line 221
    return-void
.end method

.method public deleteAnimation()V
    .locals 14

    .prologue
    const v2, 0x3f4ccccd

    const/high16 v6, 0x3f00

    const/4 v5, 0x1

    const/high16 v1, 0x3f80

    .line 801
    iget-object v3, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mGrid:Lcom/android/server/sec/ClippedDataPickerGridView;

    invoke-virtual {v3}, Lcom/android/server/sec/ClippedDataPickerGridView;->getLastVisiblePosition()I

    move-result v3

    iget v4, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mSelectedIndex:I

    if-lt v3, v4, :cond_3

    iget-object v3, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mGrid:Lcom/android/server/sec/ClippedDataPickerGridView;

    invoke-virtual {v3}, Lcom/android/server/sec/ClippedDataPickerGridView;->getFirstVisiblePosition()I

    move-result v3

    iget v4, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mSelectedIndex:I

    if-gt v3, v4, :cond_3

    .line 803
    iget v3, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mSelectedIndex:I

    iget-object v4, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mGrid:Lcom/android/server/sec/ClippedDataPickerGridView;

    invoke-virtual {v4}, Lcom/android/server/sec/ClippedDataPickerGridView;->getFirstVisiblePosition()I

    move-result v4

    sub-int v12, v3, v4

    .line 804
    .local v12, position:I
    sget-boolean v3, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v3, :cond_0

    const-string v3, "ClipboardServiceEx"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "position : "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 806
    :cond_0
    new-instance v10, Landroid/view/animation/AnimationSet;

    invoke-direct {v10, v5}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 807
    .local v10, animSet:Landroid/view/animation/AnimationSet;
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    move v3, v1

    move v4, v2

    move v7, v5

    move v8, v6

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .line 808
    .local v0, scale:Landroid/view/animation/ScaleAnimation;
    new-instance v9, Landroid/view/animation/AlphaAnimation;

    const/4 v2, 0x0

    invoke-direct {v9, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 809
    .local v9, alpha:Landroid/view/animation/AlphaAnimation;
    invoke-virtual {v10, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 810
    invoke-virtual {v10, v9}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 811
    iget-object v1, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mDeleteAnimation:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v10, v1}, Landroid/view/animation/AnimationSet;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 812
    const-wide/16 v1, 0x1f4

    invoke-virtual {v10, v1, v2}, Landroid/view/animation/AnimationSet;->setDuration(J)V

    .line 815
    iget-object v1, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mGrid:Lcom/android/server/sec/ClippedDataPickerGridView;

    invoke-virtual {v1, v12}, Lcom/android/server/sec/ClippedDataPickerGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    .line 817
    .local v13, v:Landroid/view/View;
    if-eqz v13, :cond_2

    .line 818
    invoke-virtual {v13, v10}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    .line 819
    invoke-virtual {v13, v10}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 866
    .end local v0           #scale:Landroid/view/animation/ScaleAnimation;
    .end local v9           #alpha:Landroid/view/animation/AlphaAnimation;
    .end local v10           #animSet:Landroid/view/animation/AnimationSet;
    .end local v12           #position:I
    .end local v13           #v:Landroid/view/View;
    :cond_1
    :goto_0
    return-void

    .line 821
    .restart local v0       #scale:Landroid/view/animation/ScaleAnimation;
    .restart local v9       #alpha:Landroid/view/animation/AlphaAnimation;
    .restart local v10       #animSet:Landroid/view/animation/AnimationSet;
    .restart local v12       #position:I
    .restart local v13       #v:Landroid/view/View;
    :cond_2
    sget-boolean v1, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v1, :cond_1

    const-string v1, "ClipboardServiceEx"

    const-string v2, "v is NULL"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 828
    .end local v0           #scale:Landroid/view/animation/ScaleAnimation;
    .end local v9           #alpha:Landroid/view/animation/AlphaAnimation;
    .end local v10           #animSet:Landroid/view/animation/AnimationSet;
    .end local v12           #position:I
    .end local v13           #v:Landroid/view/View;
    :cond_3
    :try_start_0
    iget-object v1, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mClipboardDataUiEvent:Landroid/sec/clipboard/IClipboardDataUiEvent;

    iget v2, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mSelectedIndex:I

    invoke-interface {v1, v2}, Landroid/sec/clipboard/IClipboardDataUiEvent;->removeItem(I)V

    .line 829
    sget v1, Lcom/android/server/sec/ClippedDataPickerDialog;->CHILD_COUNT:I

    add-int/lit8 v1, v1, -0x1

    sput v1, Lcom/android/server/sec/ClippedDataPickerDialog;->CHILD_COUNT:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 837
    :goto_1
    iget-object v1, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mCbm:Landroid/sec/clipboard/ClipboardExManager;

    invoke-virtual {v1}, Landroid/sec/clipboard/ClipboardExManager;->getDataListSize()I

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/android/server/sec/ClippedDataPickerDialog;->dismiss()V

    goto :goto_0

    .line 831
    :catch_0
    move-exception v11

    .line 833
    .local v11, e:Landroid/os/RemoteException;
    invoke-virtual {v11}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1
.end method

.method public dismiss()V
    .locals 1

    .prologue
    .line 1724
    iget-object v0, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mClearDialog:Lcom/android/server/sec/ClippedDataPickerDialog$ClearConfirmDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mClearDialog:Lcom/android/server/sec/ClippedDataPickerDialog$ClearConfirmDialog;

    invoke-virtual {v0}, Lcom/android/server/sec/ClippedDataPickerDialog$ClearConfirmDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1725
    iget-object v0, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mClearDialog:Lcom/android/server/sec/ClippedDataPickerDialog$ClearConfirmDialog;

    invoke-virtual {v0}, Lcom/android/server/sec/ClippedDataPickerDialog$ClearConfirmDialog;->dismiss()V

    .line 1728
    :cond_0
    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V

    .line 1729
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 1733
    invoke-super {p0, p1}, Landroid/app/Dialog;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onClipBoardDialogSizeChanged()V
    .locals 6

    .prologue
    const/4 v5, -0x1

    .line 1752
    invoke-virtual {p0}, Lcom/android/server/sec/ClippedDataPickerDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 1753
    .local v0, cfg:Landroid/content/res/Configuration;
    iget v2, v0, Landroid/content/res/Configuration;->orientation:I

    iget v3, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mCurrentOrientation:I

    if-eq v2, v3, :cond_0

    .line 1754
    const v2, 0x1020435

    invoke-virtual {p0, v2}, Lcom/android/server/sec/ClippedDataPickerDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 1755
    .local v1, clipBoardBottomPanel:Landroid/widget/LinearLayout;
    iget v2, v0, Landroid/content/res/Configuration;->orientation:I

    iput v2, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mCurrentOrientation:I

    .line 1756
    iget-object v2, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mClipDrawer:Lcom/android/server/sec/TwSlidingDrawer;

    if-eqz v2, :cond_0

    .line 1757
    iget v2, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    .line 1758
    iget-object v2, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mClipDrawer:Lcom/android/server/sec/TwSlidingDrawer;

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    iget v4, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mClipBoardLandscapeHeight:I

    invoke-direct {v3, v5, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3}, Lcom/android/server/sec/TwSlidingDrawer;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1759
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    iget v3, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mClipBoardPanelLandscapeHeight:I

    invoke-direct {v2, v5, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1760
    iget-object v2, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mGrid:Lcom/android/server/sec/ClippedDataPickerGridView;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/android/server/sec/ClippedDataPickerGridView;->setNumColumns(I)V

    .line 1767
    .end local v1           #clipBoardBottomPanel:Landroid/widget/LinearLayout;
    :cond_0
    :goto_0
    return-void

    .line 1761
    .restart local v1       #clipBoardBottomPanel:Landroid/widget/LinearLayout;
    :cond_1
    iget v2, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 1762
    iget-object v2, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mClipDrawer:Lcom/android/server/sec/TwSlidingDrawer;

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    iget v4, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mClipBoardPortraitHeight:I

    invoke-direct {v3, v5, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3}, Lcom/android/server/sec/TwSlidingDrawer;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1763
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    iget v3, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mClipBoardPanelPortraitHeight:I

    invoke-direct {v2, v5, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 12
    .parameter "savedInstanceState"

    .prologue
    const/16 v11, 0x8

    const/4 v10, 0x1

    .line 349
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 352
    invoke-virtual {p0}, Lcom/android/server/sec/ClippedDataPickerDialog;->getWindow()Landroid/view/Window;

    move-result-object v7

    invoke-virtual {v7, v11}, Landroid/view/Window;->addFlags(I)V

    .line 355
    invoke-virtual {p0}, Lcom/android/server/sec/ClippedDataPickerDialog;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x105008e

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v7

    float-to-int v7, v7

    iput v7, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mClipBoardPortraitHeight:I

    .line 356
    invoke-virtual {p0}, Lcom/android/server/sec/ClippedDataPickerDialog;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x105008f

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v7

    float-to-int v7, v7

    iput v7, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mClipBoardLandscapeHeight:I

    .line 357
    invoke-virtual {p0}, Lcom/android/server/sec/ClippedDataPickerDialog;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x1050090

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v7

    float-to-int v7, v7

    iput v7, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mClipBoardPanelPortraitHeight:I

    .line 358
    invoke-virtual {p0}, Lcom/android/server/sec/ClippedDataPickerDialog;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x1050091

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v7

    float-to-int v7, v7

    iput v7, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mClipBoardPanelLandscapeHeight:I

    .line 360
    invoke-virtual {p0}, Lcom/android/server/sec/ClippedDataPickerDialog;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 361
    .local v0, config:Landroid/content/res/Configuration;
    if-eqz v0, :cond_a

    .line 362
    iget v7, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v8, 0x2

    if-ne v7, v8, :cond_7

    .line 363
    sget-boolean v7, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v7, :cond_0

    const-string v7, "ClipboardServiceEx"

    const-string v8, "orientation == Configuration.ORIENTATION_LANDSCAPE"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/sec/ClippedDataPickerDialog;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x1050096

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v7

    float-to-int v7, v7

    iput v7, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mGridItemWidth:I

    .line 366
    invoke-virtual {p0}, Lcom/android/server/sec/ClippedDataPickerDialog;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x1050097

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v7

    float-to-int v7, v7

    iput v7, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mGridItemHeight:I

    .line 367
    invoke-virtual {p0}, Lcom/android/server/sec/ClippedDataPickerDialog;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x1050098

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v7

    float-to-int v7, v7

    iput v7, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mHTMLImageWidth:I

    .line 368
    invoke-virtual {p0}, Lcom/android/server/sec/ClippedDataPickerDialog;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x1050099

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v7

    float-to-int v7, v7

    iput v7, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mHTMLImageHeight:I

    .line 384
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/sec/ClippedDataPickerDialog;->getWindow()Landroid/view/Window;

    move-result-object v6

    .line 385
    .local v6, theWindow:Landroid/view/Window;
    const/16 v7, 0x57

    invoke-virtual {v6, v7}, Landroid/view/Window;->setGravity(I)V

    .line 387
    sget-boolean v7, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v7, :cond_2

    const-string v7, "ClipboardServiceEx"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Width :"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mGridItemWidth:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "   Height :"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mGridItemHeight:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 389
    :cond_2
    const v7, 0x1090106

    invoke-virtual {p0, v7}, Lcom/android/server/sec/ClippedDataPickerDialog;->setContentView(I)V

    .line 391
    const v7, 0x102025d

    invoke-virtual {p0, v7}, Lcom/android/server/sec/ClippedDataPickerDialog;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/android/server/sec/ClippedDataPickerGridView;

    iput-object v7, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mGrid:Lcom/android/server/sec/ClippedDataPickerGridView;

    .line 395
    iget-object v7, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mCbm:Landroid/sec/clipboard/ClipboardExManager;

    if-nez v7, :cond_3

    .line 396
    invoke-virtual {p0}, Lcom/android/server/sec/ClippedDataPickerDialog;->getContext()Landroid/content/Context;

    move-result-object v7

    const-string v8, "clipboardEx"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/sec/clipboard/ClipboardExManager;

    iput-object v7, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mCbm:Landroid/sec/clipboard/ClipboardExManager;

    .line 399
    :cond_3
    new-instance v7, Lcom/android/server/sec/ClippedDataPickerDialog$ClipboardWorkingFormUiInterfaceImp;

    const/4 v8, 0x0

    invoke-direct {v7, p0, v8}, Lcom/android/server/sec/ClippedDataPickerDialog$ClipboardWorkingFormUiInterfaceImp;-><init>(Lcom/android/server/sec/ClippedDataPickerDialog;Lcom/android/server/sec/ClippedDataPickerDialog$1;)V

    iput-object v7, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mClipboardWorkingFormUiInterface:Lcom/android/server/sec/ClippedDataPickerDialog$ClipboardWorkingFormUiInterfaceImp;

    .line 400
    iget-object v7, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mCbm:Landroid/sec/clipboard/ClipboardExManager;

    iget-object v8, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mClipboardWorkingFormUiInterface:Lcom/android/server/sec/ClippedDataPickerDialog$ClipboardWorkingFormUiInterfaceImp;

    invoke-virtual {v7, v8}, Landroid/sec/clipboard/ClipboardExManager;->RegistClipboardWorkingFormUiInterface(Landroid/sec/clipboard/IClipboardWorkingFormUiInterface;)Z

    .line 403
    iget-object v7, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mGrid:Lcom/android/server/sec/ClippedDataPickerGridView;

    new-instance v8, Lcom/android/server/sec/ClippedDataPickerDialog$2;

    invoke-direct {v8, p0}, Lcom/android/server/sec/ClippedDataPickerDialog$2;-><init>(Lcom/android/server/sec/ClippedDataPickerDialog;)V

    invoke-virtual {v7, v8}, Lcom/android/server/sec/ClippedDataPickerGridView;->setLayoutAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 419
    const/4 v7, -0x1

    const/4 v8, -0x2

    invoke-virtual {v6, v7, v8}, Landroid/view/Window;->setLayout(II)V

    .line 421
    const v7, 0x1020433

    invoke-virtual {p0, v7}, Lcom/android/server/sec/ClippedDataPickerDialog;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/android/server/sec/TwSlidingDrawer;

    iput-object v7, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mClipDrawer:Lcom/android/server/sec/TwSlidingDrawer;

    .line 423
    iget-object v7, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mClipDrawer:Lcom/android/server/sec/TwSlidingDrawer;

    new-instance v8, Lcom/android/server/sec/ClippedDataPickerDialog$3;

    invoke-direct {v8, p0}, Lcom/android/server/sec/ClippedDataPickerDialog$3;-><init>(Lcom/android/server/sec/ClippedDataPickerDialog;)V

    invoke-virtual {v7, v8}, Lcom/android/server/sec/TwSlidingDrawer;->setOnDrawerCloseListener(Landroid/widget/SlidingDrawer$OnDrawerCloseListener;)V

    .line 430
    invoke-virtual {p0}, Lcom/android/server/sec/ClippedDataPickerDialog;->rebuildView()V

    .line 432
    iget-object v7, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 433
    .local v5, packageManager:Landroid/content/pm/PackageManager;
    const/16 v7, 0x80

    invoke-virtual {v5, v7}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v2

    .line 435
    .local v2, installedApplications:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v7

    if-ge v1, v7, :cond_b

    .line 436
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/ApplicationInfo;

    iget-object v3, v7, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 437
    .local v3, installedPackage:Ljava/lang/String;
    const-string v7, "com.sec.android.widgetapp.diotek.smemo"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 438
    iput-boolean v10, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mIsInstalledSMemo:Z

    .line 440
    :cond_4
    const-string v7, "com.sec.android.app.snotebook"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 441
    iput-boolean v10, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mIsInstalledSNote:Z

    .line 443
    :cond_5
    const-string v7, "com.sec.android.app.memo"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 444
    iput-boolean v10, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mIsInstalledMemo:Z

    .line 435
    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 370
    .end local v1           #i:I
    .end local v2           #installedApplications:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    .end local v3           #installedPackage:Ljava/lang/String;
    .end local v5           #packageManager:Landroid/content/pm/PackageManager;
    .end local v6           #theWindow:Landroid/view/Window;
    :cond_7
    iget v7, v0, Landroid/content/res/Configuration;->orientation:I

    if-ne v7, v10, :cond_9

    .line 371
    sget-boolean v7, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v7, :cond_8

    const-string v7, "ClipboardServiceEx"

    const-string v8, "orientation == Configuration.ORIENTATION_PORTRAIT"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 373
    :cond_8
    invoke-virtual {p0}, Lcom/android/server/sec/ClippedDataPickerDialog;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x1050092

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v7

    float-to-int v7, v7

    iput v7, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mGridItemWidth:I

    .line 374
    invoke-virtual {p0}, Lcom/android/server/sec/ClippedDataPickerDialog;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x1050093

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v7

    float-to-int v7, v7

    iput v7, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mGridItemHeight:I

    .line 375
    invoke-virtual {p0}, Lcom/android/server/sec/ClippedDataPickerDialog;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x1050094

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v7

    float-to-int v7, v7

    iput v7, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mHTMLImageWidth:I

    .line 376
    invoke-virtual {p0}, Lcom/android/server/sec/ClippedDataPickerDialog;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x1050095

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v7

    float-to-int v7, v7

    iput v7, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mHTMLImageHeight:I

    goto/16 :goto_0

    .line 378
    :cond_9
    sget-boolean v7, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v7, :cond_1

    const-string v7, "ClipboardServiceEx"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "orientation does not accept. config.orientation :"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v0, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 381
    :cond_a
    sget-boolean v7, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v7, :cond_1

    const-string v7, "ClipboardServiceEx"

    const-string v8, "config is null!!!!"

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 450
    .restart local v1       #i:I
    .restart local v2       #installedApplications:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    .restart local v5       #packageManager:Landroid/content/pm/PackageManager;
    .restart local v6       #theWindow:Landroid/view/Window;
    :cond_b
    const v7, 0x1020436

    invoke-virtual {p0, v7}, Lcom/android/server/sec/ClippedDataPickerDialog;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/Button;

    iput-object v7, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mClearButton:Landroid/widget/Button;

    .line 451
    iget-object v7, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mClearButton:Landroid/widget/Button;

    iget-object v8, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mButtonClick:Landroid/view/View$OnClickListener;

    invoke-virtual {v7, v8}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 454
    const/4 v4, 0x1

    .line 455
    .local v4, isAllDisabled:Z
    const/4 v1, 0x0

    :goto_2
    iget-object v7, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mCbm:Landroid/sec/clipboard/ClipboardExManager;

    invoke-virtual {v7}, Landroid/sec/clipboard/ClipboardExManager;->getDataListSize()I

    move-result v7

    if-ge v1, v7, :cond_e

    .line 456
    invoke-direct {p0, v1}, Lcom/android/server/sec/ClippedDataPickerDialog;->isCheckProtectedItem(I)Z

    move-result v7

    if-nez v7, :cond_d

    .line 457
    sget-boolean v7, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v7, :cond_c

    const-string v7, "ClipboardServiceEx"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "some item is not unlocked...index :"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 458
    :cond_c
    const/4 v4, 0x0

    .line 455
    :cond_d
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 462
    :cond_e
    iget-object v7, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mCbm:Landroid/sec/clipboard/ClipboardExManager;

    if-eqz v7, :cond_10

    iget-object v7, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mClearButton:Landroid/widget/Button;

    if-eqz v7, :cond_10

    .line 463
    iget-object v7, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mCbm:Landroid/sec/clipboard/ClipboardExManager;

    invoke-virtual {v7}, Landroid/sec/clipboard/ClipboardExManager;->getDataListSize()I

    move-result v7

    if-eqz v7, :cond_f

    if-eqz v4, :cond_10

    .line 464
    :cond_f
    iget-object v7, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mClearButton:Landroid/widget/Button;

    invoke-virtual {v7, v11}, Landroid/widget/Button;->setVisibility(I)V

    .line 467
    :cond_10
    return-void
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 6
    .parameter "menu"
    .parameter "v"
    .parameter "menuInfo"

    .prologue
    const v5, 0x1140005

    const/4 v3, 0x1

    .line 676
    iput-object p1, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mShowingMenu:Landroid/view/Menu;

    .line 678
    iput-boolean v3, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mIsShowingContextmenu:Z

    .line 681
    invoke-virtual {p2, v3}, Landroid/view/View;->setContextMenuZOrderToTop(Z)V

    .line 683
    invoke-super {p0, p1, p2, p3}, Landroid/app/Dialog;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    .line 684
    iget-object v3, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mGrid:Lcom/android/server/sec/ClippedDataPickerGridView;

    invoke-virtual {v3, p2}, Lcom/android/server/sec/ClippedDataPickerGridView;->getPositionForView(Landroid/view/View;)I

    move-result v3

    iput v3, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mSelectedIndex:I

    .line 686
    new-instance v2, Landroid/view/MenuInflater;

    invoke-virtual {p0}, Lcom/android/server/sec/ClippedDataPickerDialog;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/view/MenuInflater;-><init>(Landroid/content/Context;)V

    .line 687
    .local v2, inflater:Landroid/view/MenuInflater;
    const v3, 0x1040774

    invoke-interface {p1, v3}, Landroid/view/ContextMenu;->setHeaderTitle(I)Landroid/view/ContextMenu;

    .line 688
    iget-object v3, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mGrid:Lcom/android/server/sec/ClippedDataPickerGridView;

    invoke-virtual {v3}, Lcom/android/server/sec/ClippedDataPickerGridView;->isLayoutAnimating()Z

    move-result v3

    if-nez v3, :cond_0

    .line 689
    iget v3, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mSelectedIndex:I

    invoke-direct {p0, v3}, Lcom/android/server/sec/ClippedDataPickerDialog;->isCheckProtectedItem(I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 691
    const v3, 0x1140001

    invoke-virtual {v2, v3, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 698
    :cond_0
    :goto_0
    const/4 v0, 0x0

    .line 701
    .local v0, data:Landroid/sec/clipboard/data/ClipboardData;
    :try_start_0
    iget-object v3, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mClipboardDataList:Landroid/sec/clipboard/data/IClipboardDataList;

    iget v4, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mSelectedIndex:I

    invoke-interface {v3, v4}, Landroid/sec/clipboard/data/IClipboardDataList;->getItem(I)Landroid/sec/clipboard/data/ClipboardData;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 706
    :goto_1
    if-eqz v0, :cond_6

    .line 707
    invoke-virtual {v0}, Landroid/sec/clipboard/data/ClipboardData;->GetFomat()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 737
    :cond_1
    :goto_2
    :pswitch_0
    return-void

    .line 694
    .end local v0           #data:Landroid/sec/clipboard/data/ClipboardData;
    :cond_2
    const/high16 v3, 0x114

    invoke-virtual {v2, v3, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    goto :goto_0

    .line 702
    .restart local v0       #data:Landroid/sec/clipboard/data/ClipboardData;
    :catch_0
    move-exception v1

    .line 703
    .local v1, e:Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1

    .line 709
    .end local v1           #e:Landroid/os/RemoteException;
    :pswitch_1
    iget-boolean v3, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mIsInstalledSMemo:Z

    if-eqz v3, :cond_4

    .line 710
    iget-boolean v3, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mIsInstalledSNote:Z

    if-eqz v3, :cond_3

    .line 711
    invoke-virtual {v2, v5, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    goto :goto_2

    .line 713
    :cond_3
    const v3, 0x1140004

    invoke-virtual {v2, v3, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    goto :goto_2

    .line 715
    :cond_4
    iget-boolean v3, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mIsInstalledSNote:Z

    if-eqz v3, :cond_5

    .line 716
    invoke-virtual {v2, v5, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    goto :goto_2

    .line 717
    :cond_5
    iget-boolean v3, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mIsInstalledMemo:Z

    if-eqz v3, :cond_1

    .line 718
    const v3, 0x1140003

    invoke-virtual {v2, v3, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    goto :goto_2

    .line 725
    :pswitch_2
    const v3, 0x1140002

    invoke-virtual {v2, v3, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    goto :goto_2

    .line 735
    :cond_6
    sget-boolean v3, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v3, :cond_1

    const-string v3, "ClipboardServiceEx"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onCreateContextMenu(). data is invalid state. mSelectedIndex :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mSelectedIndex:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 707
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method public onMenuItemSelected(ILandroid/view/MenuItem;)Z
    .locals 9
    .parameter "featureId"
    .parameter "item"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 869
    sget-boolean v6, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v6, :cond_0

    const-string v6, "ClipboardServiceEx"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mSelectedIndex :"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mSelectedIndex:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 872
    :cond_0
    :try_start_0
    iget-object v6, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mClipboardDataList:Landroid/sec/clipboard/data/IClipboardDataList;

    iget v7, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mSelectedIndex:I

    invoke-interface {v6, v7}, Landroid/sec/clipboard/data/IClipboardDataList;->getItem(I)Landroid/sec/clipboard/data/ClipboardData;

    move-result-object v0

    .line 874
    .local v0, data:Landroid/sec/clipboard/data/ClipboardData;
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v6

    packed-switch v6, :pswitch_data_0

    .line 987
    invoke-super {p0, p2}, Landroid/app/Dialog;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v4

    .line 992
    .end local v0           #data:Landroid/sec/clipboard/data/ClipboardData;
    :goto_0
    return v4

    .line 876
    .restart local v0       #data:Landroid/sec/clipboard/data/ClipboardData;
    :pswitch_0
    sget-boolean v5, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v5, :cond_1

    const-string v5, "ClipboardServiceEx"

    const-string v6, "select delete menu"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 879
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/sec/ClippedDataPickerDialog;->deleteAnimation()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 989
    .end local v0           #data:Landroid/sec/clipboard/data/ClipboardData;
    :catch_0
    move-exception v1

    .line 990
    .local v1, e:Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 992
    invoke-super {p0, p2}, Landroid/app/Dialog;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v4

    goto :goto_0

    .line 883
    .end local v1           #e:Landroid/os/RemoteException;
    .restart local v0       #data:Landroid/sec/clipboard/data/ClipboardData;
    :pswitch_1
    :try_start_1
    sget-boolean v5, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v5, :cond_2

    const-string v5, "ClipboardServiceEx"

    const-string v6, "select lock menu"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 886
    :cond_2
    iget v5, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mSelectedIndex:I

    invoke-virtual {p0, v5}, Lcom/android/server/sec/ClippedDataPickerDialog;->IsSetProtectAction(I)V

    goto :goto_0

    .line 890
    :pswitch_2
    sget-boolean v6, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v6, :cond_3

    const-string v6, "ClipboardServiceEx"

    const-string v7, "select save in memo menu"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 891
    :cond_3
    if-eqz v0, :cond_4

    .line 892
    new-instance v3, Ljava/lang/Thread;

    new-instance v5, Lcom/android/server/sec/ClippedDataPickerDialog$7;

    invoke-direct {v5, p0, v0}, Lcom/android/server/sec/ClippedDataPickerDialog$7;-><init>(Lcom/android/server/sec/ClippedDataPickerDialog;Landroid/sec/clipboard/data/ClipboardData;)V

    invoke-direct {v3, v5}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 904
    .local v3, stringT:Ljava/lang/Thread;
    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    goto :goto_0

    .line 908
    .end local v3           #stringT:Ljava/lang/Thread;
    :cond_4
    sget-boolean v4, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v4, :cond_5

    const-string v4, "ClipboardServiceEx"

    const-string v6, "mClipboardDataList.getItem(mSelectedIndex) is null"

    invoke-static {v4, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    move v4, v5

    .line 909
    goto :goto_0

    .line 913
    :pswitch_3
    sget-boolean v6, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v6, :cond_6

    const-string v6, "ClipboardServiceEx"

    const-string v7, "select save in s memo menu"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 914
    :cond_6
    if-eqz v0, :cond_7

    .line 915
    new-instance v3, Ljava/lang/Thread;

    new-instance v5, Lcom/android/server/sec/ClippedDataPickerDialog$8;

    invoke-direct {v5, p0, v0}, Lcom/android/server/sec/ClippedDataPickerDialog$8;-><init>(Lcom/android/server/sec/ClippedDataPickerDialog;Landroid/sec/clipboard/data/ClipboardData;)V

    invoke-direct {v3, v5}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 927
    .restart local v3       #stringT:Ljava/lang/Thread;
    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    goto :goto_0

    .line 931
    .end local v3           #stringT:Ljava/lang/Thread;
    :cond_7
    sget-boolean v4, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v4, :cond_8

    const-string v4, "ClipboardServiceEx"

    const-string v6, "mClipboardDataList.getItem(mSelectedIndex) is null"

    invoke-static {v4, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    move v4, v5

    .line 932
    goto :goto_0

    .line 936
    :pswitch_4
    sget-boolean v6, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v6, :cond_9

    const-string v6, "ClipboardServiceEx"

    const-string v7, "select save in s note menu"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 937
    :cond_9
    if-eqz v0, :cond_a

    .line 938
    new-instance v3, Ljava/lang/Thread;

    new-instance v5, Lcom/android/server/sec/ClippedDataPickerDialog$9;

    invoke-direct {v5, p0, v0}, Lcom/android/server/sec/ClippedDataPickerDialog$9;-><init>(Lcom/android/server/sec/ClippedDataPickerDialog;Landroid/sec/clipboard/data/ClipboardData;)V

    invoke-direct {v3, v5}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 950
    .restart local v3       #stringT:Ljava/lang/Thread;
    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    goto/16 :goto_0

    .line 954
    .end local v3           #stringT:Ljava/lang/Thread;
    :cond_a
    sget-boolean v4, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v4, :cond_b

    const-string v4, "ClipboardServiceEx"

    const-string v6, "mClipboardDataList.getItem(mSelectedIndex) is null"

    invoke-static {v4, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    move v4, v5

    .line 955
    goto/16 :goto_0

    .line 959
    :pswitch_5
    sget-boolean v6, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v6, :cond_c

    const-string v6, "ClipboardServiceEx"

    const-string v7, "select save in gallery menu"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 961
    :cond_c
    if-eqz v0, :cond_d

    .line 962
    new-instance v2, Ljava/lang/Thread;

    new-instance v5, Lcom/android/server/sec/ClippedDataPickerDialog$10;

    invoke-direct {v5, p0, v0}, Lcom/android/server/sec/ClippedDataPickerDialog$10;-><init>(Lcom/android/server/sec/ClippedDataPickerDialog;Landroid/sec/clipboard/data/ClipboardData;)V

    invoke-direct {v2, v5}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 978
    .local v2, imageT:Ljava/lang/Thread;
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    goto/16 :goto_0

    .line 982
    .end local v2           #imageT:Ljava/lang/Thread;
    :cond_d
    sget-boolean v4, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v4, :cond_e

    const-string v4, "ClipboardServiceEx"

    const-string v6, "mClipboardDataList.getItem(mSelectedIndex) is null"

    invoke-static {v4, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_e
    move v4, v5

    .line 983
    goto/16 :goto_0

    .line 874
    nop

    :pswitch_data_0
    .packed-switch 0x1020478
        :pswitch_0
        :pswitch_1
        :pswitch_5
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public onPanelClosed(ILandroid/view/Menu;)V
    .locals 1
    .parameter "featureId"
    .parameter "menu"

    .prologue
    .line 740
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mIsShowingContextmenu:Z

    .line 742
    invoke-super {p0, p1, p2}, Landroid/app/Dialog;->onPanelClosed(ILandroid/view/Menu;)V

    .line 743
    return-void
.end method

.method protected onStart()V
    .locals 4

    .prologue
    .line 473
    iget-object v2, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mClipDrawer:Lcom/android/server/sec/TwSlidingDrawer;

    if-eqz v2, :cond_0

    .line 474
    iget-object v2, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mClipDrawer:Lcom/android/server/sec/TwSlidingDrawer;

    invoke-virtual {v2}, Lcom/android/server/sec/TwSlidingDrawer;->open()V

    .line 478
    :cond_0
    invoke-super {p0}, Landroid/app/Dialog;->onStart()V

    .line 480
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 481
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 482
    const-string v2, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 483
    const-string v2, "DismissClipboardDialogFromIMMService"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 484
    const-string v2, "DismissClipboardDialogFromPhoneStatusBar"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 485
    const-string v2, "android.intent.action.USER_PRESENT"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 489
    sget-boolean v2, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v2, :cond_1

    const-string v2, "ClipboardServiceEx"

    const-string v3, "register PhoneStateListener"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 490
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/sec/ClippedDataPickerDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "phone"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 491
    .local v1, tmgr:Landroid/telephony/TelephonyManager;
    if-eqz v1, :cond_2

    .line 492
    iget-object v2, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/16 v3, 0x20

    invoke-virtual {v1, v2, v3}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 496
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/sec/ClippedDataPickerDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mBroadCastListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 499
    return-void
.end method

.method protected onStop()V
    .locals 3

    .prologue
    .line 505
    invoke-super {p0}, Landroid/app/Dialog;->onStop()V

    .line 506
    invoke-virtual {p0}, Lcom/android/server/sec/ClippedDataPickerDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mBroadCastListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 509
    sget-boolean v1, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "ClipboardServiceEx"

    const-string v2, "unregister PhoneStateListener"

    invoke-static {v1, v2}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 510
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/sec/ClippedDataPickerDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "phone"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 511
    .local v0, tmgr:Landroid/telephony/TelephonyManager;
    if-eqz v0, :cond_1

    .line 512
    iget-object v1, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 513
    const/4 v0, 0x0

    .line 515
    :cond_1
    return-void
.end method

.method public rebuildView()V
    .locals 3

    .prologue
    .line 1712
    invoke-virtual {p0}, Lcom/android/server/sec/ClippedDataPickerDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 1714
    .local v1, theWindow:Landroid/view/Window;
    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 1716
    .local v0, lp:Landroid/view/WindowManager$LayoutParams;
    const/16 v2, 0x7dc

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 1720
    return-void
.end method

.method public setPasteTargetViewInfo(ILandroid/sec/clipboard/IClipboardDataPasteEvent;)V
    .locals 3
    .parameter "type"
    .parameter "clPasteEvent"

    .prologue
    .line 1697
    iget v0, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mCurrentTargetDataType:I

    if-eq v0, p1, :cond_1

    .line 1698
    sget-boolean v0, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "ClipboardServiceEx"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setPasteTargetViewDataType() called !  mCurrentTargetDataType : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mCurrentTargetDataType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1699
    :cond_0
    iput p1, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mCurrentTargetDataType:I

    .line 1701
    invoke-virtual {p0}, Lcom/android/server/sec/ClippedDataPickerDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mAdapter:Landroid/widget/BaseAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 1707
    :cond_1
    iput-object p2, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mCurrentPasteEvent:Landroid/sec/clipboard/IClipboardDataPasteEvent;

    .line 1708
    return-void
.end method

.method public show()V
    .locals 2

    .prologue
    .line 1737
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/server/sec/ClippedDataPickerDialog$13;

    invoke-direct {v1, p0}, Lcom/android/server/sec/ClippedDataPickerDialog$13;-><init>(Lcom/android/server/sec/ClippedDataPickerDialog;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 1746
    .local v0, t:Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 1748
    invoke-super {p0}, Landroid/app/Dialog;->show()V

    .line 1749
    return-void
.end method

.method public showProtectedMarker(Landroid/view/View;I)V
    .locals 8
    .parameter "v"
    .parameter "index"

    .prologue
    const/4 v6, 0x4

    const/4 v7, 0x0

    .line 1044
    if-nez p1, :cond_1

    .line 1080
    :cond_0
    :goto_0
    return-void

    .line 1048
    :cond_1
    const v5, 0x102043f

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 1049
    .local v2, lockimage:Landroid/widget/ImageView;
    const v5, 0x1020440

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/RelativeLayout;

    .line 1051
    .local v4, protectView:Landroid/widget/RelativeLayout;
    invoke-direct {p0, p2}, Lcom/android/server/sec/ClippedDataPickerDialog;->isCheckProtectedItem(I)Z

    move-result v1

    .line 1052
    .local v1, isProtected:Z
    if-eqz v1, :cond_4

    .line 1055
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_3

    .line 1056
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .line 1057
    .local v3, params:Landroid/view/ViewGroup$LayoutParams;
    sget-boolean v5, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v5, :cond_2

    const-string v5, "ClipboardServiceEx"

    const-string v6, "showProtectedMarker@v.getTag() != null no!!"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1063
    :cond_2
    :goto_1
    invoke-virtual {v4}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 1065
    .local v0, fixParams:Landroid/view/ViewGroup$LayoutParams;
    iget v5, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput v5, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1066
    iget v5, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    iput v5, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1068
    invoke-virtual {v4, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1069
    invoke-virtual {v4, v7}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1071
    if-eqz v2, :cond_0

    .line 1072
    invoke-virtual {v2, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 1059
    .end local v0           #fixParams:Landroid/view/ViewGroup$LayoutParams;
    .end local v3           #params:Landroid/view/ViewGroup$LayoutParams;
    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .line 1060
    .restart local v3       #params:Landroid/view/ViewGroup$LayoutParams;
    sget-boolean v5, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v5, :cond_2

    const-string v5, "ClipboardServiceEx"

    const-string v6, "showProtectedMarker@v.getTag() != null !!"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1075
    .end local v3           #params:Landroid/view/ViewGroup$LayoutParams;
    :cond_4
    invoke-virtual {v4, v6}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1076
    if-eqz v2, :cond_0

    .line 1077
    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method
