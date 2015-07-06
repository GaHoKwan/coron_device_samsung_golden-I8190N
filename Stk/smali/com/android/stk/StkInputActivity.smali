.class public Lcom/android/stk/StkInputActivity;
.super Landroid/app/Activity;
.source "StkInputActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;
.implements Landroid/view/View$OnClickListener;


# instance fields
.field appService:Lcom/android/stk/StkAppService;

.field private mContext:Landroid/content/Context;

.field private mNormalLayout:Landroid/view/View;

.field mPauseRelease:Z

.field private mPromptView:Landroid/widget/TextView;

.field mSentTerminalResponse:Z

.field private mState:I

.field private final mStateReceiver:Landroid/content/BroadcastReceiver;

.field private mStkInput:Lcom/android/internal/telephony/cat/Input;

.field private mTextIn:Landroid/widget/EditText;

.field mTimeoutHandler:Landroid/os/Handler;

.field private mYesNoLayout:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 53
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 59
    iput-object v0, p0, Lcom/android/stk/StkInputActivity;->mTextIn:Landroid/widget/EditText;

    .line 60
    iput-object v0, p0, Lcom/android/stk/StkInputActivity;->mPromptView:Landroid/widget/TextView;

    .line 61
    iput-object v0, p0, Lcom/android/stk/StkInputActivity;->mYesNoLayout:Landroid/view/View;

    .line 62
    iput-object v0, p0, Lcom/android/stk/StkInputActivity;->mNormalLayout:Landroid/view/View;

    .line 63
    iput-object v0, p0, Lcom/android/stk/StkInputActivity;->mStkInput:Lcom/android/internal/telephony/cat/Input;

    .line 64
    invoke-static {}, Lcom/android/stk/StkAppService;->getInstance()Lcom/android/stk/StkAppService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/stk/StkInputActivity;->appService:Lcom/android/stk/StkAppService;

    .line 83
    new-instance v0, Lcom/android/stk/StkInputActivity$1;

    invoke-direct {v0, p0}, Lcom/android/stk/StkInputActivity$1;-><init>(Lcom/android/stk/StkInputActivity;)V

    iput-object v0, p0, Lcom/android/stk/StkInputActivity;->mTimeoutHandler:Landroid/os/Handler;

    .line 432
    new-instance v0, Lcom/android/stk/StkInputActivity$2;

    invoke-direct {v0, p0}, Lcom/android/stk/StkInputActivity$2;-><init>(Lcom/android/stk/StkInputActivity;)V

    iput-object v0, p0, Lcom/android/stk/StkInputActivity;->mStateReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/stk/StkInputActivity;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/android/stk/StkInputActivity;->sendResponse(I)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/stk/StkInputActivity;)Landroid/widget/EditText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/stk/StkInputActivity;->mTextIn:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/stk/StkInputActivity;ILjava/lang/String;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 53
    invoke-direct {p0, p1, p2, p3}, Lcom/android/stk/StkInputActivity;->sendResponse(ILjava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/stk/StkInputActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/android/stk/StkInputActivity;->verfiyTypedText()Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/android/stk/StkInputActivity;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/stk/StkInputActivity;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private cancelTimeOut()V
    .locals 2

    .prologue
    .line 344
    iget-object v0, p0, Lcom/android/stk/StkInputActivity;->mTimeoutHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 345
    return-void
.end method

.method private configInputDisplay()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    .line 363
    const v6, 0x7f070004

    invoke-virtual {p0, v6}, Lcom/android/stk/StkInputActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 364
    .local v5, numOfCharsView:Landroid/widget/TextView;
    const v6, 0x7f070003

    invoke-virtual {p0, v6}, Lcom/android/stk/StkInputActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 366
    .local v1, inTypeView:Landroid/widget/TextView;
    const v0, 0x7f06000a

    .line 370
    .local v0, inTypeId:I
    iget-object v6, p0, Lcom/android/stk/StkInputActivity;->mStkInput:Lcom/android/internal/telephony/cat/Input;

    iget-object v7, p0, Lcom/android/stk/StkInputActivity;->mStkInput:Lcom/android/internal/telephony/cat/Input;

    iget-object v7, v7, Lcom/android/internal/telephony/cat/Input;->text:Ljava/lang/String;

    const-string v8, "\r\n"

    const-string v9, "\n"

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/android/internal/telephony/cat/Input;->text:Ljava/lang/String;

    .line 371
    iget-object v6, p0, Lcom/android/stk/StkInputActivity;->mStkInput:Lcom/android/internal/telephony/cat/Input;

    iget-object v7, p0, Lcom/android/stk/StkInputActivity;->mStkInput:Lcom/android/internal/telephony/cat/Input;

    iget-object v7, v7, Lcom/android/internal/telephony/cat/Input;->text:Ljava/lang/String;

    const-string v8, "\r"

    const-string v9, "\n"

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/android/internal/telephony/cat/Input;->text:Ljava/lang/String;

    .line 375
    iget-object v6, p0, Lcom/android/stk/StkInputActivity;->mPromptView:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/android/stk/StkInputActivity;->mStkInput:Lcom/android/internal/telephony/cat/Input;

    iget-object v7, v7, Lcom/android/internal/telephony/cat/Input;->text:Ljava/lang/String;

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 378
    iget-object v6, p0, Lcom/android/stk/StkInputActivity;->mStkInput:Lcom/android/internal/telephony/cat/Input;

    iget-boolean v6, v6, Lcom/android/internal/telephony/cat/Input;->digitOnly:Z

    if-eqz v6, :cond_0

    .line 379
    iget-object v6, p0, Lcom/android/stk/StkInputActivity;->mTextIn:Landroid/widget/EditText;

    invoke-static {}, Lcom/android/stk/StkDigitsKeyListener;->getInstance()Lcom/android/stk/StkDigitsKeyListener;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->setKeyListener(Landroid/text/method/KeyListener;)V

    .line 380
    const v0, 0x7f06000b

    .line 382
    :cond_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 384
    iget-object v6, p0, Lcom/android/stk/StkInputActivity;->mStkInput:Lcom/android/internal/telephony/cat/Input;

    iget-object v6, v6, Lcom/android/internal/telephony/cat/Input;->icon:Landroid/graphics/Bitmap;

    if-eqz v6, :cond_1

    .line 385
    const/4 v6, 0x3

    new-instance v7, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v8, p0, Lcom/android/stk/StkInputActivity;->mStkInput:Lcom/android/internal/telephony/cat/Input;

    iget-object v8, v8, Lcom/android/internal/telephony/cat/Input;->icon:Landroid/graphics/Bitmap;

    invoke-direct {v7, v8}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {p0, v6, v7}, Lcom/android/stk/StkInputActivity;->setFeatureDrawable(ILandroid/graphics/drawable/Drawable;)V

    .line 390
    :cond_1
    iget v6, p0, Lcom/android/stk/StkInputActivity;->mState:I

    packed-switch v6, :pswitch_data_0

    .line 423
    :goto_0
    return-void

    .line 392
    :pswitch_0
    iget-object v6, p0, Lcom/android/stk/StkInputActivity;->mStkInput:Lcom/android/internal/telephony/cat/Input;

    iget v3, v6, Lcom/android/internal/telephony/cat/Input;->maxLen:I

    .line 393
    .local v3, maxLen:I
    iget-object v6, p0, Lcom/android/stk/StkInputActivity;->mStkInput:Lcom/android/internal/telephony/cat/Input;

    iget v4, v6, Lcom/android/internal/telephony/cat/Input;->minLen:I

    .line 394
    .local v4, minLen:I
    iget-object v6, p0, Lcom/android/stk/StkInputActivity;->mTextIn:Landroid/widget/EditText;

    const/4 v7, 0x1

    new-array v7, v7, [Landroid/text/InputFilter;

    new-instance v8, Landroid/text/InputFilter$LengthFilter;

    invoke-direct {v8, v3}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v8, v7, v10

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 398
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    .line 399
    .local v2, lengthLimit:Ljava/lang/String;
    if-eq v3, v4, :cond_2

    .line 400
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " - "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 402
    :cond_2
    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 404
    iget-object v6, p0, Lcom/android/stk/StkInputActivity;->mStkInput:Lcom/android/internal/telephony/cat/Input;

    iget-boolean v6, v6, Lcom/android/internal/telephony/cat/Input;->echo:Z

    if-nez v6, :cond_3

    .line 405
    iget-object v6, p0, Lcom/android/stk/StkInputActivity;->mTextIn:Landroid/widget/EditText;

    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 409
    :cond_3
    iget-object v6, p0, Lcom/android/stk/StkInputActivity;->mStkInput:Lcom/android/internal/telephony/cat/Input;

    iget-object v6, v6, Lcom/android/internal/telephony/cat/Input;->defaultText:Ljava/lang/String;

    if-eqz v6, :cond_4

    .line 410
    iget-object v6, p0, Lcom/android/stk/StkInputActivity;->mTextIn:Landroid/widget/EditText;

    iget-object v7, p0, Lcom/android/stk/StkInputActivity;->mStkInput:Lcom/android/internal/telephony/cat/Input;

    iget-object v7, v7, Lcom/android/internal/telephony/cat/Input;->defaultText:Ljava/lang/String;

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 413
    :cond_4
    iget-object v6, p0, Lcom/android/stk/StkInputActivity;->mTextIn:Landroid/widget/EditText;

    const-string v7, ""

    sget-object v8, Landroid/widget/TextView$BufferType;->EDITABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {v6, v7, v8}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    goto :goto_0

    .line 419
    .end local v2           #lengthLimit:Ljava/lang/String;
    .end local v3           #maxLen:I
    .end local v4           #minLen:I
    :pswitch_1
    iget-object v6, p0, Lcom/android/stk/StkInputActivity;->mYesNoLayout:Landroid/view/View;

    invoke-virtual {v6, v10}, Landroid/view/View;->setVisibility(I)V

    .line 420
    iget-object v6, p0, Lcom/android/stk/StkInputActivity;->mNormalLayout:Landroid/view/View;

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 390
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private sendResponse(I)V
    .locals 2
    .parameter "resId"

    .prologue
    .line 243
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/stk/StkInputActivity;->sendResponse(ILjava/lang/String;Z)V

    .line 244
    return-void
.end method

.method private sendResponse(ILjava/lang/String;Z)V
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 247
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 248
    const-string v1, "op"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 249
    const-string v1, "response id"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 250
    if-eqz p2, :cond_0

    .line 251
    const-string v1, "input"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 253
    :cond_0
    const-string v1, "help"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 254
    iget-object v1, p0, Lcom/android/stk/StkInputActivity;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, Lcom/android/stk/StkInputActivity;->mContext:Landroid/content/Context;

    const-class v4, Lcom/android/stk/StkAppService;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v2, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 256
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/stk/StkInputActivity;->mSentTerminalResponse:Z

    .line 257
    return-void
.end method

.method private startPauseTimeOut()V
    .locals 4

    .prologue
    .line 358
    iget-object v0, p0, Lcom/android/stk/StkInputActivity;->mTimeoutHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/stk/StkInputActivity;->mTimeoutHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 360
    return-void
.end method

.method private startTimeOut()V
    .locals 5

    .prologue
    .line 348
    invoke-direct {p0}, Lcom/android/stk/StkInputActivity;->cancelTimeOut()V

    .line 349
    iget-object v1, p0, Lcom/android/stk/StkInputActivity;->mStkInput:Lcom/android/internal/telephony/cat/Input;

    iget-object v1, v1, Lcom/android/internal/telephony/cat/Input;->duration:Lcom/android/internal/telephony/cat/Duration;

    invoke-static {v1}, Lcom/android/stk/StkApp;->calculateDurationInMilis(Lcom/android/internal/telephony/cat/Duration;)I

    move-result v0

    .line 350
    .local v0, duration:I
    if-nez v0, :cond_0

    .line 351
    const v0, 0x9c40

    .line 353
    :cond_0
    iget-object v1, p0, Lcom/android/stk/StkInputActivity;->mTimeoutHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/stk/StkInputActivity;->mTimeoutHandler:Landroid/os/Handler;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    int-to-long v3, v0

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 355
    return-void
.end method

.method private verfiyTypedText()Z
    .locals 2

    .prologue
    .line 336
    iget-object v0, p0, Lcom/android/stk/StkInputActivity;->mTextIn:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    iget-object v1, p0, Lcom/android/stk/StkInputActivity;->mStkInput:Lcom/android/internal/telephony/cat/Input;

    iget v1, v1, Lcom/android/internal/telephony/cat/Input;->minLen:I

    if-ge v0, v1, :cond_0

    .line 337
    const/4 v0, 0x0

    .line 340
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .parameter "s"

    .prologue
    .line 332
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 324
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 103
    const/4 v0, 0x0

    .line 105
    .local v0, input:Ljava/lang/String;
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 122
    :goto_0
    :pswitch_0
    const/16 v1, 0xc

    const/4 v2, 0x0

    invoke-direct {p0, v1, v0, v2}, Lcom/android/stk/StkInputActivity;->sendResponse(ILjava/lang/String;Z)V

    .line 123
    invoke-virtual {p0}, Lcom/android/stk/StkInputActivity;->finish()V

    .line 124
    :cond_0
    return-void

    .line 108
    :pswitch_1
    invoke-direct {p0}, Lcom/android/stk/StkInputActivity;->verfiyTypedText()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 111
    iget-object v1, p0, Lcom/android/stk/StkInputActivity;->mTextIn:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 112
    goto :goto_0

    .line 115
    :pswitch_2
    const-string v0, "YES"

    .line 116
    goto :goto_0

    .line 118
    :pswitch_3
    const-string v0, "NO"

    goto :goto_0

    .line 105
    nop

    :pswitch_data_0
    .packed-switch 0x7f070006
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .parameter "newConfig"

    .prologue
    .line 222
    const-string v0, "onConfigurationChanged"

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 223
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 224
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 8
    .parameter "icicle"

    .prologue
    const/4 v6, 0x1

    .line 128
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 132
    const v5, 0x7f030001

    invoke-virtual {p0, v5}, Lcom/android/stk/StkInputActivity;->setContentView(I)V

    .line 133
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/android/stk/StkInputActivity;->mSentTerminalResponse:Z

    .line 136
    const v5, 0x7f070005

    invoke-virtual {p0, v5}, Lcom/android/stk/StkInputActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    iput-object v5, p0, Lcom/android/stk/StkInputActivity;->mTextIn:Landroid/widget/EditText;

    .line 137
    const/high16 v5, 0x7f07

    invoke-virtual {p0, v5}, Lcom/android/stk/StkInputActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/android/stk/StkInputActivity;->mPromptView:Landroid/widget/TextView;

    .line 140
    const v5, 0x7f070006

    invoke-virtual {p0, v5}, Lcom/android/stk/StkInputActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    .line 141
    .local v3, okButton:Landroid/widget/Button;
    const v5, 0x7f070008

    invoke-virtual {p0, v5}, Lcom/android/stk/StkInputActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    .line 142
    .local v4, yesButton:Landroid/widget/Button;
    const v5, 0x7f070009

    invoke-virtual {p0, v5}, Lcom/android/stk/StkInputActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 144
    .local v2, noButton:Landroid/widget/Button;
    invoke-virtual {v3, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 145
    invoke-virtual {v4, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 146
    invoke-virtual {v2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 148
    const v5, 0x7f070007

    invoke-virtual {p0, v5}, Lcom/android/stk/StkInputActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/android/stk/StkInputActivity;->mYesNoLayout:Landroid/view/View;

    .line 149
    const v5, 0x7f070001

    invoke-virtual {p0, v5}, Lcom/android/stk/StkInputActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/android/stk/StkInputActivity;->mNormalLayout:Landroid/view/View;

    .line 153
    new-instance v0, Landroid/content/IntentFilter;

    const-string v5, "com.android.samsungtest.EVENTHANDLE_TEXTANDBUTTON"

    invoke-direct {v0, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 154
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v5, "com.android.samsungtest.EVENTHANDLE_BUTTON"

    invoke-virtual {v0, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 155
    const-string v5, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 156
    invoke-virtual {p0}, Lcom/android/stk/StkInputActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 157
    .local v1, intent:Landroid/content/Intent;
    if-eqz v1, :cond_3

    .line 158
    const-string v5, "INPUT"

    invoke-virtual {v1, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v5

    check-cast v5, Lcom/android/internal/telephony/cat/Input;

    iput-object v5, p0, Lcom/android/stk/StkInputActivity;->mStkInput:Lcom/android/internal/telephony/cat/Input;

    .line 159
    iget-object v5, p0, Lcom/android/stk/StkInputActivity;->mStkInput:Lcom/android/internal/telephony/cat/Input;

    if-nez v5, :cond_0

    .line 160
    invoke-virtual {p0}, Lcom/android/stk/StkInputActivity;->finish()V

    .line 174
    :goto_0
    invoke-virtual {p0}, Lcom/android/stk/StkInputActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v5

    iput-object v5, p0, Lcom/android/stk/StkInputActivity;->mContext:Landroid/content/Context;

    .line 175
    iget-object v5, p0, Lcom/android/stk/StkInputActivity;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/android/stk/StkInputActivity;->mStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v5, v7, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 176
    iput-boolean v6, p0, Lcom/android/stk/StkInputActivity;->mPauseRelease:Z

    .line 177
    invoke-direct {p0}, Lcom/android/stk/StkInputActivity;->startPauseTimeOut()V

    .line 178
    return-void

    .line 162
    :cond_0
    iget-object v5, p0, Lcom/android/stk/StkInputActivity;->mStkInput:Lcom/android/internal/telephony/cat/Input;

    iget-boolean v5, v5, Lcom/android/internal/telephony/cat/Input;->yesNo:Z

    if-eqz v5, :cond_2

    const/4 v5, 0x2

    :goto_1
    iput v5, p0, Lcom/android/stk/StkInputActivity;->mState:I

    .line 163
    invoke-direct {p0}, Lcom/android/stk/StkInputActivity;->configInputDisplay()V

    .line 165
    iget-object v5, p0, Lcom/android/stk/StkInputActivity;->appService:Lcom/android/stk/StkAppService;

    iget-object v5, v5, Lcom/android/stk/StkAppService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v5}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v5

    if-nez v5, :cond_1

    .line 166
    iget-object v5, p0, Lcom/android/stk/StkInputActivity;->appService:Lcom/android/stk/StkAppService;

    iget-object v5, v5, Lcom/android/stk/StkAppService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v5}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 168
    :cond_1
    iget-object v5, p0, Lcom/android/stk/StkInputActivity;->appService:Lcom/android/stk/StkAppService;

    invoke-virtual {v5}, Lcom/android/stk/StkAppService;->disableKeyguard()V

    goto :goto_0

    :cond_2
    move v5, v6

    .line 162
    goto :goto_1

    .line 171
    :cond_3
    invoke-virtual {p0}, Lcom/android/stk/StkInputActivity;->finish()V

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 5
    .parameter "menu"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 261
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 269
    const v0, 0x7f060001

    invoke-interface {p1, v4, v3, v3, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 271
    const/4 v0, 0x3

    const/4 v1, 0x2

    const v2, 0x7f060002

    invoke-interface {p1, v4, v0, v1, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 274
    return v3
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 233
    packed-switch p1, :pswitch_data_0

    .line 239
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0

    .line 235
    :pswitch_0
    const/16 v0, 0x15

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/android/stk/StkInputActivity;->sendResponse(ILjava/lang/String;Z)V

    .line 236
    invoke-virtual {p0}, Lcom/android/stk/StkInputActivity;->finish()V

    goto :goto_0

    .line 233
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .parameter "item"

    .prologue
    const/4 v0, 0x1

    .line 308
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 319
    :pswitch_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 310
    :pswitch_1
    const/16 v1, 0x16

    invoke-direct {p0, v1}, Lcom/android/stk/StkInputActivity;->sendResponse(I)V

    .line 311
    invoke-virtual {p0}, Lcom/android/stk/StkInputActivity;->finish()V

    goto :goto_0

    .line 314
    :pswitch_2
    const/16 v1, 0xc

    const-string v2, ""

    invoke-direct {p0, v1, v2, v0}, Lcom/android/stk/StkInputActivity;->sendResponse(ILjava/lang/String;Z)V

    .line 315
    invoke-virtual {p0}, Lcom/android/stk/StkInputActivity;->finish()V

    goto :goto_0

    .line 308
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 196
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 197
    const-string v0, "onPause finish activity and send TR as END_SESSION"

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 198
    iget-boolean v0, p0, Lcom/android/stk/StkInputActivity;->mPauseRelease:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/stk/StkInputActivity;->mSentTerminalResponse:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_4

    .line 199
    :cond_0
    iget-object v0, p0, Lcom/android/stk/StkInputActivity;->appService:Lcom/android/stk/StkAppService;

    iget-object v0, v0, Lcom/android/stk/StkAppService;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 201
    :try_start_0
    iget-object v0, p0, Lcom/android/stk/StkInputActivity;->appService:Lcom/android/stk/StkAppService;

    iget-object v0, v0, Lcom/android/stk/StkAppService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 202
    const-string v0, "before release wakeup"

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 203
    iget-object v0, p0, Lcom/android/stk/StkInputActivity;->appService:Lcom/android/stk/StkAppService;

    iget-object v0, v0, Lcom/android/stk/StkAppService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 206
    :cond_1
    iget-object v0, p0, Lcom/android/stk/StkInputActivity;->appService:Lcom/android/stk/StkAppService;

    iget-object v0, v0, Lcom/android/stk/StkAppService;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 208
    iget-object v0, p0, Lcom/android/stk/StkInputActivity;->appService:Lcom/android/stk/StkAppService;

    invoke-virtual {v0}, Lcom/android/stk/StkAppService;->enableKeyguard()V

    .line 209
    iget-boolean v0, p0, Lcom/android/stk/StkInputActivity;->mSentTerminalResponse:Z

    if-nez v0, :cond_2

    .line 210
    const/16 v0, 0x16

    invoke-direct {p0, v0}, Lcom/android/stk/StkInputActivity;->sendResponse(I)V

    .line 212
    :cond_2
    iget-object v0, p0, Lcom/android/stk/StkInputActivity;->mStateReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_3

    .line 213
    iget-object v0, p0, Lcom/android/stk/StkInputActivity;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/stk/StkInputActivity;->mStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 215
    :cond_3
    invoke-direct {p0}, Lcom/android/stk/StkInputActivity;->cancelTimeOut()V

    .line 216
    invoke-virtual {p0}, Lcom/android/stk/StkInputActivity;->finish()V

    .line 218
    :cond_4
    return-void

    .line 206
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/android/stk/StkInputActivity;->appService:Lcom/android/stk/StkAppService;

    iget-object v1, v1, Lcom/android/stk/StkAppService;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method protected onPostCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 182
    invoke-super {p0, p1}, Landroid/app/Activity;->onPostCreate(Landroid/os/Bundle;)V

    .line 184
    iget-object v0, p0, Lcom/android/stk/StkInputActivity;->mTextIn:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 185
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 3
    .parameter "menu"

    .prologue
    const/4 v2, 0x1

    .line 279
    invoke-super {p0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    .line 286
    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 287
    const/4 v0, 0x3

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iget-object v1, p0, Lcom/android/stk/StkInputActivity;->mStkInput:Lcom/android/internal/telephony/cat/Input;

    iget-boolean v1, v1, Lcom/android/internal/telephony/cat/Input;->helpAvailable:Z

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 289
    return v2
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 189
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 190
    const-string v0, "onResume startTimeOut"

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 191
    invoke-direct {p0}, Lcom/android/stk/StkInputActivity;->startTimeOut()V

    .line 192
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 227
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 228
    const-string v0, "onStop"

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 229
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 328
    invoke-direct {p0}, Lcom/android/stk/StkInputActivity;->startTimeOut()V

    .line 329
    return-void
.end method
