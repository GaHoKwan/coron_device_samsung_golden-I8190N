.class public Lcom/android/stk/StkMenuActivity;
.super Landroid/app/ListActivity;
.source "StkMenuActivity.java"


# instance fields
.field appService:Lcom/android/stk/StkAppService;

.field private mAcceptUsersInput:Z

.field private mContext:Landroid/content/Context;

.field private mEntered:Z

.field private mProgressView:Landroid/widget/ProgressBar;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mState:I

.field private mStkMenu:Lcom/android/internal/telephony/cat/Menu;

.field mTimeoutHandler:Landroid/os/Handler;

.field private mTitleIconView:Landroid/widget/ImageView;

.field private mTitleTextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 62
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    .line 64
    iput-object v1, p0, Lcom/android/stk/StkMenuActivity;->mStkMenu:Lcom/android/internal/telephony/cat/Menu;

    .line 66
    iput v0, p0, Lcom/android/stk/StkMenuActivity;->mState:I

    .line 67
    iput-boolean v0, p0, Lcom/android/stk/StkMenuActivity;->mAcceptUsersInput:Z

    .line 69
    iput-object v1, p0, Lcom/android/stk/StkMenuActivity;->mTitleTextView:Landroid/widget/TextView;

    .line 70
    iput-object v1, p0, Lcom/android/stk/StkMenuActivity;->mTitleIconView:Landroid/widget/ImageView;

    .line 71
    iput-object v1, p0, Lcom/android/stk/StkMenuActivity;->mProgressView:Landroid/widget/ProgressBar;

    .line 72
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/stk/StkMenuActivity;->mEntered:Z

    .line 73
    iput-object v1, p0, Lcom/android/stk/StkMenuActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 74
    invoke-static {}, Lcom/android/stk/StkAppService;->getInstance()Lcom/android/stk/StkAppService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/stk/StkMenuActivity;->appService:Lcom/android/stk/StkAppService;

    .line 84
    new-instance v0, Lcom/android/stk/StkMenuActivity$1;

    invoke-direct {v0, p0}, Lcom/android/stk/StkMenuActivity$1;-><init>(Lcom/android/stk/StkMenuActivity;)V

    iput-object v0, p0, Lcom/android/stk/StkMenuActivity;->mTimeoutHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$002(Lcom/android/stk/StkMenuActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 62
    iput-boolean p1, p0, Lcom/android/stk/StkMenuActivity;->mAcceptUsersInput:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/stk/StkMenuActivity;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 62
    invoke-direct {p0, p1}, Lcom/android/stk/StkMenuActivity;->sendResponse(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/stk/StkMenuActivity;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 62
    iget-object v0, p0, Lcom/android/stk/StkMenuActivity;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private cancelTimeOut()V
    .locals 2

    .prologue
    .line 469
    iget-object v0, p0, Lcom/android/stk/StkMenuActivity;->mTimeoutHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 470
    return-void
.end method

.method private displayMenu()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 497
    iget-object v1, p0, Lcom/android/stk/StkMenuActivity;->mStkMenu:Lcom/android/internal/telephony/cat/Menu;

    if-eqz v1, :cond_0

    .line 499
    iget-object v1, p0, Lcom/android/stk/StkMenuActivity;->mStkMenu:Lcom/android/internal/telephony/cat/Menu;

    iget-object v1, v1, Lcom/android/internal/telephony/cat/Menu;->titleIcon:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_1

    .line 500
    iget-object v1, p0, Lcom/android/stk/StkMenuActivity;->mTitleIconView:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/stk/StkMenuActivity;->mStkMenu:Lcom/android/internal/telephony/cat/Menu;

    iget-object v2, v2, Lcom/android/internal/telephony/cat/Menu;->titleIcon:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 501
    iget-object v1, p0, Lcom/android/stk/StkMenuActivity;->mTitleIconView:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 505
    :goto_0
    iget-object v1, p0, Lcom/android/stk/StkMenuActivity;->mStkMenu:Lcom/android/internal/telephony/cat/Menu;

    iget-boolean v1, v1, Lcom/android/internal/telephony/cat/Menu;->titleIconSelfExplanatory:Z

    if-nez v1, :cond_3

    .line 506
    iget-object v1, p0, Lcom/android/stk/StkMenuActivity;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 507
    iget-object v1, p0, Lcom/android/stk/StkMenuActivity;->mStkMenu:Lcom/android/internal/telephony/cat/Menu;

    iget-object v1, v1, Lcom/android/internal/telephony/cat/Menu;->title:Ljava/lang/String;

    if-nez v1, :cond_2

    .line 508
    iget-object v1, p0, Lcom/android/stk/StkMenuActivity;->mTitleTextView:Landroid/widget/TextView;

    const/high16 v2, 0x7f06

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 516
    :goto_1
    new-instance v0, Lcom/android/stk/StkMenuAdapter;

    iget-object v1, p0, Lcom/android/stk/StkMenuActivity;->mStkMenu:Lcom/android/internal/telephony/cat/Menu;

    iget-object v1, v1, Lcom/android/internal/telephony/cat/Menu;->items:Ljava/util/List;

    iget-object v2, p0, Lcom/android/stk/StkMenuActivity;->mStkMenu:Lcom/android/internal/telephony/cat/Menu;

    iget-boolean v2, v2, Lcom/android/internal/telephony/cat/Menu;->itemsIconSelfExplanatory:Z

    invoke-direct {v0, p0, v1, v2}, Lcom/android/stk/StkMenuAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Z)V

    .line 519
    .local v0, adapter:Lcom/android/stk/StkMenuAdapter;
    invoke-virtual {p0, v0}, Lcom/android/stk/StkMenuActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 521
    iget-object v1, p0, Lcom/android/stk/StkMenuActivity;->mStkMenu:Lcom/android/internal/telephony/cat/Menu;

    iget v1, v1, Lcom/android/internal/telephony/cat/Menu;->defaultItem:I

    invoke-virtual {p0, v1}, Lcom/android/stk/StkMenuActivity;->setSelection(I)V

    .line 523
    .end local v0           #adapter:Lcom/android/stk/StkMenuAdapter;
    :cond_0
    return-void

    .line 503
    :cond_1
    iget-object v1, p0, Lcom/android/stk/StkMenuActivity;->mTitleIconView:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 510
    :cond_2
    iget-object v1, p0, Lcom/android/stk/StkMenuActivity;->mTitleTextView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/stk/StkMenuActivity;->mStkMenu:Lcom/android/internal/telephony/cat/Menu;

    iget-object v2, v2, Lcom/android/internal/telephony/cat/Menu;->title:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 513
    :cond_3
    iget-object v1, p0, Lcom/android/stk/StkMenuActivity;->mTitleTextView:Landroid/widget/TextView;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1
.end method

.method private getSelectedItem(I)Lcom/android/internal/telephony/cat/Item;
    .locals 4
    .parameter "position"

    .prologue
    .line 540
    const/4 v2, 0x0

    .line 541
    .local v2, item:Lcom/android/internal/telephony/cat/Item;
    iget-object v3, p0, Lcom/android/stk/StkMenuActivity;->mStkMenu:Lcom/android/internal/telephony/cat/Menu;

    if-eqz v3, :cond_0

    .line 543
    :try_start_0
    iget-object v3, p0, Lcom/android/stk/StkMenuActivity;->mStkMenu:Lcom/android/internal/telephony/cat/Menu;

    iget-object v3, v3, Lcom/android/internal/telephony/cat/Menu;->items:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/android/internal/telephony/cat/Item;

    move-object v2, v0
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    .line 554
    :cond_0
    :goto_0
    return-object v2

    .line 544
    :catch_0
    move-exception v1

    .line 546
    .local v1, e:Ljava/lang/IndexOutOfBoundsException;
    const-string v3, "Invalid menu"

    invoke-static {p0, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 548
    .end local v1           #e:Ljava/lang/IndexOutOfBoundsException;
    :catch_1
    move-exception v1

    .line 550
    .local v1, e:Ljava/lang/NullPointerException;
    const-string v3, "Invalid menu"

    invoke-static {p0, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private initFromIntent(Landroid/content/Intent;)V
    .locals 2
    .parameter "intent"

    .prologue
    .line 527
    if-eqz p1, :cond_1

    .line 528
    const-string v0, "STATE"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/stk/StkMenuActivity;->mState:I

    .line 529
    invoke-virtual {p0}, Lcom/android/stk/StkMenuActivity;->invalidateOptionsMenu()V

    .line 533
    :goto_0
    iget v0, p0, Lcom/android/stk/StkMenuActivity;->mState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 534
    const-string v0, "get end intent"

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 535
    invoke-virtual {p0}, Lcom/android/stk/StkMenuActivity;->finish()V

    .line 537
    :cond_0
    return-void

    .line 531
    :cond_1
    invoke-virtual {p0}, Lcom/android/stk/StkMenuActivity;->finish()V

    goto :goto_0
.end method

.method private sendResponse(I)V
    .locals 1
    .parameter "resId"

    .prologue
    const/4 v0, 0x0

    .line 558
    invoke-direct {p0, p1, v0, v0}, Lcom/android/stk/StkMenuActivity;->sendResponse(IIZ)V

    .line 559
    return-void
.end method

.method private sendResponse(IIZ)V
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 562
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 563
    const-string v1, "op"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 564
    const-string v1, "response id"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 565
    const-string v1, "menu selection"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 566
    const-string v1, "help"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 567
    iget-object v1, p0, Lcom/android/stk/StkMenuActivity;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, Lcom/android/stk/StkMenuActivity;->mContext:Landroid/content/Context;

    const-class v4, Lcom/android/stk/StkAppService;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v2, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 569
    return-void
.end method

.method private startTimeOut()V
    .locals 5

    .prologue
    .line 474
    iget v1, p0, Lcom/android/stk/StkMenuActivity;->mState:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 476
    iget-boolean v1, p0, Lcom/android/stk/StkMenuActivity;->mEntered:Z

    if-eqz v1, :cond_2

    .line 477
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    const-string v2, "CscFeature_RIL_StkUiTimeOutForSelectItem"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/CscFeature;->getInteger(Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_1

    .line 478
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    const-string v2, "CscFeature_RIL_StkUiTimeOutForSelectItem"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/CscFeature;->getInteger(Ljava/lang/String;)I

    move-result v1

    mul-int/lit16 v0, v1, 0x3e8

    .line 488
    .local v0, timeOut:I
    :goto_0
    invoke-direct {p0}, Lcom/android/stk/StkMenuActivity;->cancelTimeOut()V

    .line 489
    iget-object v1, p0, Lcom/android/stk/StkMenuActivity;->mTimeoutHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/stk/StkMenuActivity;->mTimeoutHandler:Landroid/os/Handler;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    int-to-long v3, v0

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 492
    .end local v0           #timeOut:I
    :cond_0
    return-void

    .line 481
    :cond_1
    const v0, 0xea60

    .restart local v0       #timeOut:I
    goto :goto_0

    .line 485
    .end local v0           #timeOut:I
    :cond_2
    const v0, 0x9c40

    .restart local v0       #timeOut:I
    goto :goto_0
.end method


# virtual methods
.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 7
    .parameter "item"

    .prologue
    const/4 v4, 0x1

    .line 425
    iget-boolean v5, p0, Lcom/android/stk/StkMenuActivity;->mAcceptUsersInput:Z

    if-nez v5, :cond_0

    .line 453
    :goto_0
    return v4

    .line 428
    :cond_0
    iget-object v5, p0, Lcom/android/stk/StkMenuActivity;->appService:Lcom/android/stk/StkAppService;

    iget-boolean v5, v5, Lcom/android/stk/StkAppService;->mMenuItemBlock:Z

    if-ne v5, v4, :cond_1

    .line 429
    const-string v5, "menu blocked"

    invoke-static {p0, v5}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 432
    :cond_1
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v5

    packed-switch v5, :pswitch_data_0

    .line 453
    :cond_2
    :goto_1
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v4

    goto :goto_0

    .line 436
    :pswitch_0
    :try_start_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v1

    check-cast v1, Landroid/widget/AdapterView$AdapterContextMenuInfo;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 441
    .local v1, info:Landroid/widget/AdapterView$AdapterContextMenuInfo;
    invoke-direct {p0}, Lcom/android/stk/StkMenuActivity;->cancelTimeOut()V

    .line 442
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/android/stk/StkMenuActivity;->mAcceptUsersInput:Z

    .line 443
    iget v2, v1, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    .line 444
    .local v2, position:I
    invoke-direct {p0, v2}, Lcom/android/stk/StkMenuActivity;->getSelectedItem(I)Lcom/android/internal/telephony/cat/Item;

    move-result-object v3

    .line 445
    .local v3, stkItem:Lcom/android/internal/telephony/cat/Item;
    if-eqz v3, :cond_2

    .line 449
    const/16 v5, 0xb

    iget v6, v3, Lcom/android/internal/telephony/cat/Item;->id:I

    invoke-direct {p0, v5, v6, v4}, Lcom/android/stk/StkMenuActivity;->sendResponse(IIZ)V

    goto :goto_0

    .line 437
    .end local v1           #info:Landroid/widget/AdapterView$AdapterContextMenuInfo;
    .end local v2           #position:I
    .end local v3           #stkItem:Lcom/android/internal/telephony/cat/Item;
    :catch_0
    move-exception v0

    .line 438
    .local v0, e:Ljava/lang/ClassCastException;
    const-string v4, "bad menuInfo"

    invoke-static {p0, v4}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1

    .line 432
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7
    .parameter "icicle"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 99
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 101
    const-string v3, "onCreate"

    invoke-static {p0, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 105
    const v3, 0x7f030003

    invoke-virtual {p0, v3}, Lcom/android/stk/StkMenuActivity;->setContentView(I)V

    .line 107
    const v3, 0x7f070015

    invoke-virtual {p0, v3}, Lcom/android/stk/StkMenuActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/stk/StkMenuActivity;->mTitleTextView:Landroid/widget/TextView;

    .line 108
    const v3, 0x7f070014

    invoke-virtual {p0, v3}, Lcom/android/stk/StkMenuActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/android/stk/StkMenuActivity;->mTitleIconView:Landroid/widget/ImageView;

    .line 109
    const v3, 0x7f070017

    invoke-virtual {p0, v3}, Lcom/android/stk/StkMenuActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ProgressBar;

    iput-object v3, p0, Lcom/android/stk/StkMenuActivity;->mProgressView:Landroid/widget/ProgressBar;

    .line 110
    invoke-virtual {p0}, Lcom/android/stk/StkMenuActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v3

    iput-object v3, p0, Lcom/android/stk/StkMenuActivity;->mContext:Landroid/content/Context;

    .line 112
    const-string v3, "gsm.STK_SETUP_MENU"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_0

    .line 113
    const-string v3, "gsm.STK_SETUP_MENU"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/stk/StkMenuActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 116
    :cond_0
    invoke-virtual {p0}, Lcom/android/stk/StkMenuActivity;->getListView()Landroid/widget/ListView;

    move-result-object v3

    invoke-virtual {v3, p0}, Landroid/widget/ListView;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 117
    invoke-virtual {p0}, Lcom/android/stk/StkMenuActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/stk/StkMenuActivity;->initFromIntent(Landroid/content/Intent;)V

    .line 118
    iput-boolean v6, p0, Lcom/android/stk/StkMenuActivity;->mAcceptUsersInput:Z

    .line 119
    iput-boolean v5, p0, Lcom/android/stk/StkMenuActivity;->mEntered:Z

    .line 122
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 123
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v3, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 124
    iget-object v3, p0, Lcom/android/stk/StkMenuActivity;->mContext:Landroid/content/Context;

    new-instance v4, Lcom/android/stk/StkMenuActivity$2;

    invoke-direct {v4, p0}, Lcom/android/stk/StkMenuActivity$2;-><init>(Lcom/android/stk/StkMenuActivity;)V

    iput-object v4, p0, Lcom/android/stk/StkMenuActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v4, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 136
    iget-object v3, p0, Lcom/android/stk/StkMenuActivity;->appService:Lcom/android/stk/StkAppService;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/stk/StkMenuActivity;->appService:Lcom/android/stk/StkAppService;

    invoke-virtual {v3}, Lcom/android/stk/StkAppService;->isAirplaneMode()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 138
    :cond_1
    iget-object v3, p0, Lcom/android/stk/StkMenuActivity;->appService:Lcom/android/stk/StkAppService;

    if-eqz v3, :cond_3

    .line 149
    const-string v3, "device is in AirplaneMode"

    invoke-static {p0, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 150
    iget-object v3, p0, Lcom/android/stk/StkMenuActivity;->appService:Lcom/android/stk/StkAppService;

    invoke-virtual {v3}, Lcom/android/stk/StkAppService;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f060018

    invoke-virtual {v3, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    .line 152
    .local v1, message:Ljava/lang/CharSequence;
    iget-object v3, p0, Lcom/android/stk/StkMenuActivity;->appService:Lcom/android/stk/StkAppService;

    invoke-virtual {v3}, Lcom/android/stk/StkAppService;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    .line 154
    .local v2, toast:Landroid/widget/Toast;
    const/16 v3, 0x50

    invoke-virtual {v2, v3, v5, v5}, Landroid/widget/Toast;->setGravity(III)V

    .line 155
    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 159
    .end local v1           #message:Ljava/lang/CharSequence;
    .end local v2           #toast:Landroid/widget/Toast;
    :goto_0
    invoke-virtual {p0}, Lcom/android/stk/StkMenuActivity;->finish()V

    .line 163
    :cond_2
    return-void

    .line 157
    :cond_3
    const-string v3, "appService is null"

    invoke-static {p0, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 3
    .parameter "menu"
    .parameter "view"
    .parameter "menuInfo"

    .prologue
    const/4 v2, 0x0

    .line 398
    invoke-super {p0, p1, p2, p3}, Landroid/app/ListActivity;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    .line 401
    iget-object v0, p0, Lcom/android/stk/StkMenuActivity;->mStkMenu:Lcom/android/internal/telephony/cat/Menu;

    if-eqz v0, :cond_1

    .line 403
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onCreateContextMenu helpAvailable = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/stk/StkMenuActivity;->mStkMenu:Lcom/android/internal/telephony/cat/Menu;

    iget-boolean v1, v1, Lcom/android/internal/telephony/cat/Menu;->helpAvailable:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 411
    iget-object v0, p0, Lcom/android/stk/StkMenuActivity;->mStkMenu:Lcom/android/internal/telephony/cat/Menu;

    iget-boolean v0, v0, Lcom/android/internal/telephony/cat/Menu;->helpAvailable:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 412
    const/4 v0, 0x3

    const v1, 0x7f060002

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 420
    :cond_0
    :goto_0
    return-void

    .line 418
    :cond_1
    const-string v0, "onCreateContextMenu, mStkMenu is null"

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 5
    .parameter "menu"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 287
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 294
    const v0, 0x7f060001

    invoke-interface {p1, v4, v3, v3, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 295
    const/4 v0, 0x3

    const/4 v1, 0x2

    const v2, 0x7f060002

    invoke-interface {p1, v4, v0, v1, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 297
    return v3
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 276
    invoke-super {p0}, Landroid/app/ListActivity;->onDestroy()V

    .line 277
    iget-object v0, p0, Lcom/android/stk/StkMenuActivity;->appService:Lcom/android/stk/StkAppService;

    if-eqz v0, :cond_0

    .line 278
    iget-object v0, p0, Lcom/android/stk/StkMenuActivity;->appService:Lcom/android/stk/StkAppService;

    invoke-virtual {v0}, Lcom/android/stk/StkAppService;->clearmIsStartedByUser()V

    .line 280
    :cond_0
    const-string v0, "onDestroy"

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 281
    invoke-direct {p0}, Lcom/android/stk/StkMenuActivity;->cancelTimeOut()V

    .line 282
    iget-object v0, p0, Lcom/android/stk/StkMenuActivity;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/stk/StkMenuActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 283
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v0, 0x1

    .line 201
    iget-boolean v1, p0, Lcom/android/stk/StkMenuActivity;->mAcceptUsersInput:Z

    if-nez v1, :cond_0

    .line 222
    :goto_0
    return v0

    .line 204
    :cond_0
    iget-object v1, p0, Lcom/android/stk/StkMenuActivity;->appService:Lcom/android/stk/StkAppService;

    iget-boolean v1, v1, Lcom/android/stk/StkAppService;->mMenuItemBlock:Z

    if-ne v1, v0, :cond_1

    .line 205
    const-string v1, "menu blocked"

    invoke-static {p0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 209
    :cond_1
    packed-switch p1, :pswitch_data_0

    .line 222
    :goto_1
    invoke-super {p0, p1, p2}, Landroid/app/ListActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0

    .line 211
    :pswitch_0
    iget v1, p0, Lcom/android/stk/StkMenuActivity;->mState:I

    packed-switch v1, :pswitch_data_1

    goto :goto_1

    .line 213
    :pswitch_1
    invoke-direct {p0}, Lcom/android/stk/StkMenuActivity;->cancelTimeOut()V

    .line 214
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/stk/StkMenuActivity;->mAcceptUsersInput:Z

    .line 215
    const/16 v1, 0x15

    invoke-direct {p0, v1}, Lcom/android/stk/StkMenuActivity;->sendResponse(I)V

    goto :goto_0

    .line 209
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch

    .line 211
    :pswitch_data_1
    .packed-switch 0x2
        :pswitch_1
    .end packed-switch
.end method

.method protected onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 5
    .parameter "l"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 176
    invoke-super/range {p0 .. p5}, Landroid/app/ListActivity;->onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V

    .line 178
    iget-boolean v1, p0, Lcom/android/stk/StkMenuActivity;->mAcceptUsersInput:Z

    if-nez v1, :cond_1

    .line 179
    const-string v1, "!mAcceptUsersInput"

    invoke-static {p0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 196
    :cond_0
    :goto_0
    return-void

    .line 183
    :cond_1
    invoke-direct {p0, p3}, Lcom/android/stk/StkMenuActivity;->getSelectedItem(I)Lcom/android/internal/telephony/cat/Item;

    move-result-object v0

    .line 184
    .local v0, item:Lcom/android/internal/telephony/cat/Item;
    if-eqz v0, :cond_0

    .line 187
    iget-object v1, p0, Lcom/android/stk/StkMenuActivity;->appService:Lcom/android/stk/StkAppService;

    iget-boolean v1, v1, Lcom/android/stk/StkAppService;->mMenuItemBlock:Z

    if-ne v1, v4, :cond_2

    .line 188
    const-string v1, "menu blocked"

    invoke-static {p0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 191
    :cond_2
    invoke-direct {p0}, Lcom/android/stk/StkMenuActivity;->cancelTimeOut()V

    .line 192
    const/16 v1, 0xb

    iget v2, v0, Lcom/android/internal/telephony/cat/Item;->id:I

    invoke-direct {p0, v1, v2, v3}, Lcom/android/stk/StkMenuActivity;->sendResponse(IIZ)V

    .line 193
    iput-boolean v3, p0, Lcom/android/stk/StkMenuActivity;->mAcceptUsersInput:Z

    .line 194
    iget-object v1, p0, Lcom/android/stk/StkMenuActivity;->mProgressView:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 195
    iget-object v1, p0, Lcom/android/stk/StkMenuActivity;->mProgressView:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v4}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    goto :goto_0
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 1
    .parameter "intent"

    .prologue
    .line 167
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 169
    const-string v0, "onNewIntent"

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 170
    invoke-direct {p0, p1}, Lcom/android/stk/StkMenuActivity;->initFromIntent(Landroid/content/Intent;)V

    .line 171
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/stk/StkMenuActivity;->mAcceptUsersInput:Z

    .line 172
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 5
    .parameter "item"

    .prologue
    const/4 v4, 0x0

    const/4 v2, 0x1

    .line 342
    iget-boolean v3, p0, Lcom/android/stk/StkMenuActivity;->mAcceptUsersInput:Z

    if-nez v3, :cond_0

    .line 392
    :goto_0
    return v2

    .line 345
    :cond_0
    iget-object v3, p0, Lcom/android/stk/StkMenuActivity;->appService:Lcom/android/stk/StkAppService;

    iget-boolean v3, v3, Lcom/android/stk/StkAppService;->mMenuItemBlock:Z

    if-ne v3, v2, :cond_1

    .line 346
    const-string v3, "menu blocked"

    invoke-static {p0, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 372
    :cond_1
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 392
    :cond_2
    :pswitch_0
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v2

    goto :goto_0

    .line 374
    :pswitch_1
    invoke-direct {p0}, Lcom/android/stk/StkMenuActivity;->cancelTimeOut()V

    .line 375
    iput-boolean v4, p0, Lcom/android/stk/StkMenuActivity;->mAcceptUsersInput:Z

    .line 377
    const/16 v3, 0x16

    invoke-direct {p0, v3}, Lcom/android/stk/StkMenuActivity;->sendResponse(I)V

    goto :goto_0

    .line 380
    :pswitch_2
    invoke-direct {p0}, Lcom/android/stk/StkMenuActivity;->cancelTimeOut()V

    .line 381
    iput-boolean v4, p0, Lcom/android/stk/StkMenuActivity;->mAcceptUsersInput:Z

    .line 382
    invoke-virtual {p0}, Lcom/android/stk/StkMenuActivity;->getSelectedItemPosition()I

    move-result v0

    .line 383
    .local v0, position:I
    invoke-direct {p0, v0}, Lcom/android/stk/StkMenuActivity;->getSelectedItem(I)Lcom/android/internal/telephony/cat/Item;

    move-result-object v1

    .line 384
    .local v1, stkItem:Lcom/android/internal/telephony/cat/Item;
    if-eqz v1, :cond_2

    .line 388
    const/16 v3, 0xb

    iget v4, v1, Lcom/android/internal/telephony/cat/Item;->id:I

    invoke-direct {p0, v3, v4, v2}, Lcom/android/stk/StkMenuActivity;->sendResponse(IIZ)V

    goto :goto_0

    .line 372
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
    .line 261
    invoke-super {p0}, Landroid/app/ListActivity;->onPause()V

    .line 262
    iget-object v0, p0, Lcom/android/stk/StkMenuActivity;->appService:Lcom/android/stk/StkAppService;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/stk/StkAppService;->indicateMenuVisibility(Z)V

    .line 272
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 9
    .parameter "menu"

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    .line 302
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    .line 303
    const/4 v0, 0x0

    .line 304
    .local v0, helpVisible:Z
    const/4 v4, 0x0

    .line 305
    .local v4, mainVisible:Z
    const/4 v3, 0x0

    .line 306
    .local v3, mTempStkMenu:Lcom/android/internal/telephony/cat/Menu;
    const/4 v2, 0x0

    .line 307
    .local v2, mTempMainStkMenu:Lcom/android/internal/telephony/cat/Menu;
    iget-object v6, p0, Lcom/android/stk/StkMenuActivity;->appService:Lcom/android/stk/StkAppService;

    invoke-virtual {v6}, Lcom/android/stk/StkAppService;->getMenu()Lcom/android/internal/telephony/cat/Menu;

    move-result-object v3

    .line 308
    iget-object v6, p0, Lcom/android/stk/StkMenuActivity;->appService:Lcom/android/stk/StkAppService;

    invoke-virtual {v6}, Lcom/android/stk/StkAppService;->getMainMenu()Lcom/android/internal/telephony/cat/Menu;

    move-result-object v2

    .line 309
    if-eqz v3, :cond_0

    if-eqz v2, :cond_0

    .line 311
    iget-object v6, v3, Lcom/android/internal/telephony/cat/Menu;->items:Ljava/util/List;

    check-cast v6, Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 312
    .local v1, items_stk_temp:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/cat/Item;>;"
    iget-object v5, v2, Lcom/android/internal/telephony/cat/Menu;->items:Ljava/util/List;

    .line 313
    .local v5, main_items_stk_temp:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/cat/Item;>;"
    invoke-interface {v1, v5}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 314
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    if-nez v6, :cond_3

    .line 315
    iput v7, p0, Lcom/android/stk/StkMenuActivity;->mState:I

    .line 320
    .end local v1           #items_stk_temp:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/cat/Item;>;"
    .end local v5           #main_items_stk_temp:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/cat/Item;>;"
    :cond_0
    :goto_0
    iget v6, p0, Lcom/android/stk/StkMenuActivity;->mState:I

    if-ne v6, v8, :cond_1

    .line 321
    const/4 v4, 0x1

    .line 329
    :cond_1
    iget-object v6, p0, Lcom/android/stk/StkMenuActivity;->mStkMenu:Lcom/android/internal/telephony/cat/Menu;

    if-eqz v6, :cond_2

    .line 330
    iget-object v6, p0, Lcom/android/stk/StkMenuActivity;->mStkMenu:Lcom/android/internal/telephony/cat/Menu;

    iget-boolean v0, v6, Lcom/android/internal/telephony/cat/Menu;->helpAvailable:Z

    .line 333
    :cond_2
    invoke-interface {p1, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v6

    invoke-interface {v6, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 334
    const/4 v6, 0x3

    invoke-interface {p1, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v6

    invoke-interface {v6, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 337
    return v7

    .line 317
    .restart local v1       #items_stk_temp:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/cat/Item;>;"
    .restart local v5       #main_items_stk_temp:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/cat/Item;>;"
    :cond_3
    iput v8, p0, Lcom/android/stk/StkMenuActivity;->mState:I

    goto :goto_0
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 464
    const-string v0, "STATE"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/stk/StkMenuActivity;->mState:I

    .line 465
    const-string v0, "MENU"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/cat/Menu;

    iput-object v0, p0, Lcom/android/stk/StkMenuActivity;->mStkMenu:Lcom/android/internal/telephony/cat/Menu;

    .line 466
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 227
    invoke-super {p0}, Landroid/app/ListActivity;->onResume()V

    .line 229
    iget-object v0, p0, Lcom/android/stk/StkMenuActivity;->appService:Lcom/android/stk/StkAppService;

    invoke-virtual {v0, v2}, Lcom/android/stk/StkAppService;->indicateMenuVisibility(Z)V

    .line 234
    iget-object v0, p0, Lcom/android/stk/StkMenuActivity;->appService:Lcom/android/stk/StkAppService;

    invoke-virtual {v0}, Lcom/android/stk/StkAppService;->getMenu()Lcom/android/internal/telephony/cat/Menu;

    move-result-object v0

    iput-object v0, p0, Lcom/android/stk/StkMenuActivity;->mStkMenu:Lcom/android/internal/telephony/cat/Menu;

    .line 235
    iget-object v0, p0, Lcom/android/stk/StkMenuActivity;->mStkMenu:Lcom/android/internal/telephony/cat/Menu;

    if-nez v0, :cond_0

    .line 236
    const-string v0, "onDestroy, mStkMenu is null"

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 237
    invoke-virtual {p0}, Lcom/android/stk/StkMenuActivity;->finish()V

    .line 257
    :goto_0
    return-void

    .line 241
    :cond_0
    invoke-direct {p0}, Lcom/android/stk/StkMenuActivity;->displayMenu()V

    .line 245
    iget-boolean v0, p0, Lcom/android/stk/StkMenuActivity;->mAcceptUsersInput:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/stk/StkMenuActivity;->appService:Lcom/android/stk/StkAppService;

    iget-boolean v0, v0, Lcom/android/stk/StkAppService;->mIsMainMenu:Z

    if-eqz v0, :cond_2

    .line 246
    :cond_1
    const-string v0, "onResume : It\'s STK MAIN MENU"

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 247
    iput v2, p0, Lcom/android/stk/StkMenuActivity;->mState:I

    .line 248
    iput-boolean v2, p0, Lcom/android/stk/StkMenuActivity;->mAcceptUsersInput:Z

    .line 249
    iget-object v0, p0, Lcom/android/stk/StkMenuActivity;->appService:Lcom/android/stk/StkAppService;

    iput-boolean v1, v0, Lcom/android/stk/StkAppService;->mIsMainMenu:Z

    .line 251
    :cond_2
    invoke-direct {p0}, Lcom/android/stk/StkMenuActivity;->startTimeOut()V

    .line 252
    invoke-virtual {p0}, Lcom/android/stk/StkMenuActivity;->invalidateOptionsMenu()V

    .line 254
    iget-object v0, p0, Lcom/android/stk/StkMenuActivity;->mProgressView:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 255
    iget-object v0, p0, Lcom/android/stk/StkMenuActivity;->mProgressView:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 256
    iput-boolean v2, p0, Lcom/android/stk/StkMenuActivity;->mEntered:Z

    goto :goto_0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 458
    const-string v0, "STATE"

    iget v1, p0, Lcom/android/stk/StkMenuActivity;->mState:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 459
    const-string v0, "MENU"

    iget-object v1, p0, Lcom/android/stk/StkMenuActivity;->mStkMenu:Lcom/android/internal/telephony/cat/Menu;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 460
    return-void
.end method
