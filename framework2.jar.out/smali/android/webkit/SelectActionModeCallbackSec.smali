.class public Landroid/webkit/SelectActionModeCallbackSec;
.super Ljava/lang/Object;
.source "SelectActionModeCallbackSec.java"

# interfaces
.implements Landroid/view/ActionMode$Callback;


# static fields
.field private static final LOGTAG:Ljava/lang/String; = "SelectActionModeCallbackSec"


# instance fields
.field private mActionMode:Landroid/view/ActionMode;

.field public mIsEditable:Z

.field private mRecreate:Z

.field private mWebView:Landroid/webkit/WebViewClassic;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private setMenuVisibility(Landroid/view/Menu;ZI)V
    .locals 1
    .parameter "menu"
    .parameter "visible"
    .parameter "resourceId"

    .prologue
    .line 285
    invoke-interface {p1, p3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 286
    .local v0, item:Landroid/view/MenuItem;
    if-eqz v0, :cond_0

    .line 287
    invoke-interface {v0, p2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 289
    :cond_0
    return-void
.end method


# virtual methods
.method finish()V
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Landroid/webkit/SelectActionModeCallbackSec;->mActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_0

    .line 69
    iget-object v0, p0, Landroid/webkit/SelectActionModeCallbackSec;->mActionMode:Landroid/view/ActionMode;

    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    .line 70
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/webkit/SelectActionModeCallbackSec;->mActionMode:Landroid/view/ActionMode;

    .line 72
    :cond_0
    return-void
.end method

.method finish(Z)V
    .locals 0
    .parameter "recreate"

    .prologue
    .line 76
    iput-boolean p1, p0, Landroid/webkit/SelectActionModeCallbackSec;->mRecreate:Z

    .line 77
    invoke-virtual {p0}, Landroid/webkit/SelectActionModeCallbackSec;->finish()V

    .line 78
    return-void
.end method

.method public onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
    .locals 8
    .parameter "mode"
    .parameter "item"

    .prologue
    const/16 v7, 0x7530

    const/16 v6, 0x7d0

    const/4 v4, 0x0

    .line 187
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v5

    sparse-switch v5, :sswitch_data_0

    .line 269
    :goto_0
    return v4

    .line 189
    :sswitch_0
    iget-object v4, p0, Landroid/webkit/SelectActionModeCallbackSec;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v4}, Landroid/webkit/WebViewClassic;->cutSelectionSec()V

    .line 190
    invoke-virtual {p1}, Landroid/view/ActionMode;->finish()V

    .line 269
    :goto_1
    const/4 v4, 0x1

    goto :goto_0

    .line 196
    :sswitch_1
    iget-object v4, p0, Landroid/webkit/SelectActionModeCallbackSec;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v4}, Landroid/webkit/WebViewClassic;->copySelectionSec()Z

    .line 198
    iget-object v4, p0, Landroid/webkit/SelectActionModeCallbackSec;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v4}, Landroid/webkit/WebViewClassic;->clearSelection()V

    .line 199
    invoke-virtual {p1}, Landroid/view/ActionMode;->finish()V

    goto :goto_1

    .line 203
    :sswitch_2
    iget-object v4, p0, Landroid/webkit/SelectActionModeCallbackSec;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v4}, Landroid/webkit/WebViewClassic;->pasteFromClipboard()V

    .line 204
    invoke-virtual {p1}, Landroid/view/ActionMode;->finish()V

    goto :goto_1

    .line 212
    :sswitch_3
    iget-object v4, p0, Landroid/webkit/SelectActionModeCallbackSec;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v4}, Landroid/webkit/WebViewClassic;->getSelectionSec()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_0

    .line 213
    const-string v4, "SelectActionModeCallbackSec"

    const-string v5, "mWebView.getSelectionSec() is null."

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 216
    :cond_0
    new-instance v2, Ljava/lang/StringBuffer;

    iget-object v4, p0, Landroid/webkit/SelectActionModeCallbackSec;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v4}, Landroid/webkit/WebViewClassic;->getSelectionSec()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 217
    .local v2, selection:Ljava/lang/StringBuffer;
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->length()I

    move-result v4

    if-le v4, v7, :cond_1

    .line 218
    const-string v4, "SelectActionModeCallbackSec"

    const-string v5, "onActionItemClicked: selected string is too long. Cut it"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    invoke-virtual {v2, v7}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 222
    :cond_1
    iget-object v4, p0, Landroid/webkit/SelectActionModeCallbackSec;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v4}, Landroid/webkit/WebViewClassic;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/provider/Browser;->sendString(Landroid/content/Context;Ljava/lang/String;)V

    .line 223
    iget-object v4, p0, Landroid/webkit/SelectActionModeCallbackSec;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v4}, Landroid/webkit/WebViewClassic;->clearSelection()V

    .line 224
    invoke-virtual {p1}, Landroid/view/ActionMode;->finish()V

    goto :goto_1

    .line 228
    .end local v2           #selection:Ljava/lang/StringBuffer;
    :sswitch_4
    iget-object v4, p0, Landroid/webkit/SelectActionModeCallbackSec;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v4}, Landroid/webkit/WebViewClassic;->selectAllSec()Z

    goto :goto_1

    .line 232
    :sswitch_5
    iget-object v5, p0, Landroid/webkit/SelectActionModeCallbackSec;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v5}, Landroid/webkit/WebViewClassic;->getSelectionSec()Ljava/lang/String;

    move-result-object v1

    .line 233
    .local v1, sel:Ljava/lang/String;
    iget-object v5, p0, Landroid/webkit/SelectActionModeCallbackSec;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v5}, Landroid/webkit/WebViewClassic;->clearSelection()V

    .line 234
    invoke-virtual {p1}, Landroid/view/ActionMode;->finish()V

    .line 235
    iget-object v5, p0, Landroid/webkit/SelectActionModeCallbackSec;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v5, v1, v4}, Landroid/webkit/WebViewClassic;->showFindDialog(Ljava/lang/String;Z)Z

    goto :goto_1

    .line 240
    .end local v1           #sel:Ljava/lang/String;
    :sswitch_6
    iget-object v4, p0, Landroid/webkit/SelectActionModeCallbackSec;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v4}, Landroid/webkit/WebViewClassic;->getSelectionSec()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_2

    .line 241
    const-string v4, "SelectActionModeCallbackSec"

    const-string v5, "mWebView.getSelectionSec() is null."

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 245
    :cond_2
    new-instance v3, Ljava/lang/StringBuffer;

    iget-object v4, p0, Landroid/webkit/SelectActionModeCallbackSec;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v4}, Landroid/webkit/WebViewClassic;->getSelectionSec()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 246
    .local v3, stringBuffer:Ljava/lang/StringBuffer;
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->length()I

    move-result v4

    if-le v4, v6, :cond_3

    .line 247
    invoke-virtual {v3, v6}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 250
    :cond_3
    new-instance v0, Landroid/content/Intent;

    const-string v4, "android.intent.action.WEB_SEARCH"

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 251
    .local v0, i:Landroid/content/Intent;
    const-string v4, "query"

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 252
    iget-object v4, p0, Landroid/webkit/SelectActionModeCallbackSec;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v4}, Landroid/webkit/WebViewClassic;->clearSelection()V

    .line 253
    invoke-virtual {p1}, Landroid/view/ActionMode;->finish()V

    .line 255
    iget-object v4, p0, Landroid/webkit/SelectActionModeCallbackSec;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v4}, Landroid/webkit/WebViewClassic;->getContext()Landroid/content/Context;

    move-result-object v4

    instance-of v4, v4, Landroid/app/Activity;

    if-nez v4, :cond_4

    .line 256
    const/high16 v4, 0x1000

    invoke-virtual {v0, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 258
    :cond_4
    iget-object v4, p0, Landroid/webkit/SelectActionModeCallbackSec;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v4}, Landroid/webkit/WebViewClassic;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 262
    .end local v0           #i:Landroid/content/Intent;
    .end local v3           #stringBuffer:Ljava/lang/StringBuffer;
    :sswitch_7
    iget-object v4, p0, Landroid/webkit/SelectActionModeCallbackSec;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v4}, Landroid/webkit/WebViewClassic;->pasteFromClipboardEx()V

    .line 263
    invoke-virtual {p1}, Landroid/view/ActionMode;->finish()V

    goto/16 :goto_1

    .line 187
    :sswitch_data_0
    .sparse-switch
        0x1020020 -> :sswitch_0
        0x1020021 -> :sswitch_1
        0x1020022 -> :sswitch_2
        0x102025d -> :sswitch_7
        0x102047e -> :sswitch_4
        0x102047f -> :sswitch_3
        0x1020480 -> :sswitch_5
        0x1020481 -> :sswitch_6
    .end sparse-switch
.end method

.method public onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 15
    .parameter "mode"
    .parameter "menu"

    .prologue
    .line 86
    invoke-virtual/range {p1 .. p1}, Landroid/view/ActionMode;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v13

    const v14, 0x1140007

    move-object/from16 v0, p2

    invoke-virtual {v13, v14, v0}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 87
    iget-object v13, p0, Landroid/webkit/SelectActionModeCallbackSec;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v13}, Landroid/webkit/WebViewClassic;->getContext()Landroid/content/Context;

    move-result-object v6

    .line 90
    .local v6, context:Landroid/content/Context;
    iget-object v13, p0, Landroid/webkit/SelectActionModeCallbackSec;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v13}, Landroid/webkit/WebViewClassic;->getFindOptionEnabled()Z

    move-result v7

    .line 99
    .local v7, isFindEnabled:Z
    const-string v13, "clipboard"

    invoke-virtual {v6, v13}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/content/ClipboardManager;

    move-object v4, v13

    check-cast v4, Landroid/content/ClipboardManager;

    .line 101
    .local v4, cm:Landroid/content/ClipboardManager;
    invoke-virtual/range {p1 .. p1}, Landroid/view/ActionMode;->isUiFocusable()Z

    move-result v8

    .line 106
    .local v8, isFocusable:Z
    iget-boolean v13, p0, Landroid/webkit/SelectActionModeCallbackSec;->mRecreate:Z

    if-nez v13, :cond_0

    .line 107
    iget-object v13, p0, Landroid/webkit/SelectActionModeCallbackSec;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v13}, Landroid/webkit/WebViewClassic;->focusCandidateIsEditableText()Z

    move-result v13

    iput-boolean v13, p0, Landroid/webkit/SelectActionModeCallbackSec;->mIsEditable:Z

    .line 110
    :cond_0
    const/4 v9, 0x0

    .line 111
    .local v9, isTypePassword:Z
    const/4 v12, 0x0

    .line 112
    .local v12, variation:I
    iget-object v13, p0, Landroid/webkit/SelectActionModeCallbackSec;->mWebView:Landroid/webkit/WebViewClassic;

    iget-object v13, v13, Landroid/webkit/WebViewClassic;->mInputConnection:Landroid/webkit/WebViewClassic$WebViewInputConnection;

    if-eqz v13, :cond_1

    .line 113
    iget-object v13, p0, Landroid/webkit/SelectActionModeCallbackSec;->mWebView:Landroid/webkit/WebViewClassic;

    iget-object v13, v13, Landroid/webkit/WebViewClassic;->mInputConnection:Landroid/webkit/WebViewClassic$WebViewInputConnection;

    invoke-virtual {v13}, Landroid/webkit/WebViewClassic$WebViewInputConnection;->getInputType()I

    move-result v13

    and-int/lit16 v12, v13, 0xff0

    .line 115
    const/16 v13, 0xe0

    if-ne v12, v13, :cond_1

    .line 116
    const/4 v9, 0x1

    .line 121
    :cond_1
    iget-boolean v13, p0, Landroid/webkit/SelectActionModeCallbackSec;->mIsEditable:Z

    if-eqz v13, :cond_6

    invoke-virtual {v4}, Landroid/content/ClipboardManager;->hasPrimaryClip()Z

    move-result v13

    if-eqz v13, :cond_6

    const/4 v3, 0x1

    .line 122
    .local v3, canPaste:Z
    :goto_0
    iget-boolean v13, p0, Landroid/webkit/SelectActionModeCallbackSec;->mIsEditable:Z

    if-nez v13, :cond_7

    const/4 v2, 0x1

    .line 123
    .local v2, canFind:Z
    :goto_1
    iget-boolean v13, p0, Landroid/webkit/SelectActionModeCallbackSec;->mIsEditable:Z

    if-eqz v13, :cond_8

    if-nez v9, :cond_8

    const/4 v1, 0x1

    .line 125
    .local v1, canCut:Z
    :goto_2
    iget-object v13, p0, Landroid/webkit/SelectActionModeCallbackSec;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v13}, Landroid/webkit/WebViewClassic;->getSettings()Landroid/webkit/WebSettingsClassic;

    move-result-object v13

    invoke-virtual {v13}, Landroid/webkit/WebSettingsClassic;->isBrowserApp()Z

    move-result v13

    if-eqz v13, :cond_2

    .line 126
    and-int/2addr v3, v8

    .line 127
    and-int/2addr v2, v8

    .line 128
    and-int/2addr v1, v8

    .line 132
    :cond_2
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 134
    .local v10, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v13, Ljava/lang/String;

    const-string v14, "com.android.email"

    invoke-direct {v13, v14}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 135
    iget-object v13, p0, Landroid/webkit/SelectActionModeCallbackSec;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v13}, Landroid/webkit/WebViewClassic;->getContext()Landroid/content/Context;

    move-result-object v13

    invoke-virtual {v13}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v11

    .line 136
    .local v11, pkgName:Ljava/lang/String;
    iget-object v13, p0, Landroid/webkit/SelectActionModeCallbackSec;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v13}, Landroid/webkit/WebViewClassic;->getSettings()Landroid/webkit/WebSettingsClassic;

    move-result-object v13

    invoke-virtual {v13}, Landroid/webkit/WebSettingsClassic;->isBrowserApp()Z

    move-result v13

    if-nez v13, :cond_3

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_9

    .line 137
    :cond_3
    const v13, 0x1020480

    move-object/from16 v0, p2

    invoke-direct {p0, v0, v2, v13}, Landroid/webkit/SelectActionModeCallbackSec;->setMenuVisibility(Landroid/view/Menu;ZI)V

    .line 141
    :goto_3
    const v13, 0x1020022

    move-object/from16 v0, p2

    invoke-direct {p0, v0, v3, v13}, Landroid/webkit/SelectActionModeCallbackSec;->setMenuVisibility(Landroid/view/Menu;ZI)V

    .line 142
    const v13, 0x1020020

    move-object/from16 v0, p2

    invoke-direct {p0, v0, v1, v13}, Landroid/webkit/SelectActionModeCallbackSec;->setMenuVisibility(Landroid/view/Menu;ZI)V

    .line 144
    iget-boolean v13, p0, Landroid/webkit/SelectActionModeCallbackSec;->mIsEditable:Z

    if-eqz v13, :cond_4

    .line 145
    const v13, 0x1020021

    move-object/from16 v0, p2

    invoke-direct {p0, v0, v1, v13}, Landroid/webkit/SelectActionModeCallbackSec;->setMenuVisibility(Landroid/view/Menu;ZI)V

    .line 146
    const v13, 0x102047f

    move-object/from16 v0, p2

    invoke-direct {p0, v0, v1, v13}, Landroid/webkit/SelectActionModeCallbackSec;->setMenuVisibility(Landroid/view/Menu;ZI)V

    .line 147
    const v13, 0x1020481

    move-object/from16 v0, p2

    invoke-direct {p0, v0, v1, v13}, Landroid/webkit/SelectActionModeCallbackSec;->setMenuVisibility(Landroid/view/Menu;ZI)V

    .line 149
    :cond_4
    iget-boolean v13, p0, Landroid/webkit/SelectActionModeCallbackSec;->mIsEditable:Z

    const v14, 0x102025d

    move-object/from16 v0, p2

    invoke-direct {p0, v0, v13, v14}, Landroid/webkit/SelectActionModeCallbackSec;->setMenuVisibility(Landroid/view/Menu;ZI)V

    .line 150
    move-object/from16 v0, p1

    iput-object v0, p0, Landroid/webkit/SelectActionModeCallbackSec;->mActionMode:Landroid/view/ActionMode;

    .line 157
    iget-object v13, p0, Landroid/webkit/SelectActionModeCallbackSec;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v13}, Landroid/webkit/WebViewClassic;->getContext()Landroid/content/Context;

    move-result-object v13

    invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    invoke-virtual {v13}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    .line 158
    .local v5, config:Landroid/content/res/Configuration;
    iget v13, v5, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v13, v13, 0x4

    const/4 v14, 0x4

    if-eq v13, v14, :cond_5

    .line 159
    iget v13, v5, Landroid/content/res/Configuration;->orientation:I

    const/4 v14, 0x1

    if-ne v13, v14, :cond_a

    .line 160
    const/4 v13, 0x0

    move-object/from16 v0, p2

    invoke-interface {v0, v13}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v13

    const/4 v14, 0x2

    invoke-interface {v13, v14}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 161
    const/4 v13, 0x1

    move-object/from16 v0, p2

    invoke-interface {v0, v13}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v13

    const/4 v14, 0x2

    invoke-interface {v13, v14}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 162
    const/4 v13, 0x2

    move-object/from16 v0, p2

    invoke-interface {v0, v13}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v13

    const/4 v14, 0x2

    invoke-interface {v13, v14}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 163
    const/4 v13, 0x3

    move-object/from16 v0, p2

    invoke-interface {v0, v13}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v13

    const/4 v14, 0x1

    invoke-interface {v13, v14}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 164
    const/4 v13, 0x4

    move-object/from16 v0, p2

    invoke-interface {v0, v13}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v13

    const/4 v14, 0x1

    invoke-interface {v13, v14}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 165
    const/4 v13, 0x5

    move-object/from16 v0, p2

    invoke-interface {v0, v13}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v13

    const/4 v14, 0x1

    invoke-interface {v13, v14}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 176
    :cond_5
    :goto_4
    move-object/from16 v0, p1

    iput-object v0, p0, Landroid/webkit/SelectActionModeCallbackSec;->mActionMode:Landroid/view/ActionMode;

    .line 177
    const/4 v13, 0x1

    return v13

    .line 121
    .end local v1           #canCut:Z
    .end local v2           #canFind:Z
    .end local v3           #canPaste:Z
    .end local v5           #config:Landroid/content/res/Configuration;
    .end local v10           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v11           #pkgName:Ljava/lang/String;
    :cond_6
    const/4 v3, 0x0

    goto/16 :goto_0

    .line 122
    .restart local v3       #canPaste:Z
    :cond_7
    const/4 v2, 0x0

    goto/16 :goto_1

    .line 123
    .restart local v2       #canFind:Z
    :cond_8
    const/4 v1, 0x0

    goto/16 :goto_2

    .line 139
    .restart local v1       #canCut:Z
    .restart local v10       #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v11       #pkgName:Ljava/lang/String;
    :cond_9
    const/4 v13, 0x0

    const v14, 0x1020480

    move-object/from16 v0, p2

    invoke-direct {p0, v0, v13, v14}, Landroid/webkit/SelectActionModeCallbackSec;->setMenuVisibility(Landroid/view/Menu;ZI)V

    goto/16 :goto_3

    .line 167
    .restart local v5       #config:Landroid/content/res/Configuration;
    :cond_a
    const/4 v13, 0x0

    move-object/from16 v0, p2

    invoke-interface {v0, v13}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v13

    const/4 v14, 0x6

    invoke-interface {v13, v14}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 168
    const/4 v13, 0x1

    move-object/from16 v0, p2

    invoke-interface {v0, v13}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v13

    const/4 v14, 0x6

    invoke-interface {v13, v14}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 169
    const/4 v13, 0x2

    move-object/from16 v0, p2

    invoke-interface {v0, v13}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v13

    const/4 v14, 0x5

    invoke-interface {v13, v14}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 170
    const/4 v13, 0x3

    move-object/from16 v0, p2

    invoke-interface {v0, v13}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v13

    const/4 v14, 0x5

    invoke-interface {v13, v14}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 171
    const/4 v13, 0x4

    move-object/from16 v0, p2

    invoke-interface {v0, v13}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v13

    const/4 v14, 0x5

    invoke-interface {v13, v14}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 172
    const/4 v13, 0x5

    move-object/from16 v0, p2

    invoke-interface {v0, v13}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v13

    const/4 v14, 0x5

    invoke-interface {v13, v14}, Landroid/view/MenuItem;->setShowAsAction(I)V

    goto :goto_4
.end method

.method public onDestroyActionMode(Landroid/view/ActionMode;)V
    .locals 1
    .parameter "mode"

    .prologue
    .line 276
    iget-boolean v0, p0, Landroid/webkit/SelectActionModeCallbackSec;->mRecreate:Z

    if-nez v0, :cond_0

    .line 277
    iget-object v0, p0, Landroid/webkit/SelectActionModeCallbackSec;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkit/WebViewClassic;->clearSelection()V

    .line 282
    :goto_0
    return-void

    .line 279
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/webkit/SelectActionModeCallbackSec;->mRecreate:Z

    goto :goto_0
.end method

.method public onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 1
    .parameter "mode"
    .parameter "menu"

    .prologue
    .line 182
    const/4 v0, 0x1

    return v0
.end method

.method protected onSetWebView()V
    .locals 0

    .prologue
    .line 63
    return-void
.end method

.method setWebViewClassic(Landroid/webkit/WebViewClassic;)V
    .locals 0
    .parameter "webViewClassic"

    .prologue
    .line 50
    iput-object p1, p0, Landroid/webkit/SelectActionModeCallbackSec;->mWebView:Landroid/webkit/WebViewClassic;

    .line 51
    invoke-virtual {p0}, Landroid/webkit/SelectActionModeCallbackSec;->onSetWebView()V

    .line 52
    return-void
.end method
