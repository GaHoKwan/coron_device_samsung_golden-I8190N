.class Landroid/widget/Editor$PositionListener;
.super Ljava/lang/Object;
.source "Editor.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/Editor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PositionListener"
.end annotation


# instance fields
.field private final MAXIMUM_NUMBER_OF_LISTENERS:I

.field private mCanMove:[Z

.field private mNumberOfListeners:I

.field private mPositionHasChanged:Z

.field private mPositionListeners:[Landroid/widget/Editor$TextViewPositionListener;

.field private mPositionX:I

.field private mPositionY:I

.field private mScrollHasChanged:Z

.field private mTempContentsViewCoords:[I

.field final mTempCoords:[I

.field final synthetic this$0:Landroid/widget/Editor;


# direct methods
.method private constructor <init>(Landroid/widget/Editor;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x6

    .line 2266
    iput-object p1, p0, Landroid/widget/Editor$PositionListener;->this$0:Landroid/widget/Editor;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 2269
    iput v1, p0, Landroid/widget/Editor$PositionListener;->MAXIMUM_NUMBER_OF_LISTENERS:I

    .line 2270
    new-array v0, v1, [Landroid/widget/Editor$TextViewPositionListener;

    iput-object v0, p0, Landroid/widget/Editor$PositionListener;->mPositionListeners:[Landroid/widget/Editor$TextViewPositionListener;

    .line 2272
    new-array v0, v1, [Z

    iput-object v0, p0, Landroid/widget/Editor$PositionListener;->mCanMove:[Z

    .line 2273
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/Editor$PositionListener;->mPositionHasChanged:Z

    .line 2278
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/widget/Editor$PositionListener;->mTempCoords:[I

    .line 2279
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/Editor$PositionListener;->mTempContentsViewCoords:[I

    return-void
.end method

.method synthetic constructor <init>(Landroid/widget/Editor;Landroid/widget/Editor$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2266
    invoke-direct {p0, p1}, Landroid/widget/Editor$PositionListener;-><init>(Landroid/widget/Editor;)V

    return-void
.end method

.method private checkContentsSizeChanged()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 2356
    const/4 v3, 0x0

    .line 2357
    .local v3, rootView:Landroid/view/View;
    const/4 v0, 0x0

    .line 2358
    .local v0, contentView:Landroid/view/View;
    const/4 v2, 0x0

    .local v2, newWidth:I
    const/4 v1, 0x0

    .line 2360
    .local v1, newHeight:I
    iget-object v4, p0, Landroid/widget/Editor$PositionListener;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v4}, Landroid/widget/Editor;->access$000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/TextView;->getRootView()Landroid/view/View;

    move-result-object v3

    .line 2362
    if-nez v3, :cond_1

    .line 2388
    :cond_0
    :goto_0
    return-void

    .line 2366
    :cond_1
    const v4, 0x1020002

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 2368
    if-eqz v0, :cond_0

    .line 2372
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v2

    .line 2373
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v1

    .line 2375
    iget-object v4, p0, Landroid/widget/Editor$PositionListener;->mTempContentsViewCoords:[I

    if-eqz v4, :cond_4

    .line 2376
    iget-boolean v4, p0, Landroid/widget/Editor$PositionListener;->mPositionHasChanged:Z

    if-nez v4, :cond_3

    .line 2377
    iget-object v4, p0, Landroid/widget/Editor$PositionListener;->mTempContentsViewCoords:[I

    aget v4, v4, v6

    if-ne v4, v2, :cond_2

    iget-object v4, p0, Landroid/widget/Editor$PositionListener;->mTempContentsViewCoords:[I

    aget v4, v4, v5

    if-eq v4, v1, :cond_3

    .line 2378
    :cond_2
    iput-boolean v5, p0, Landroid/widget/Editor$PositionListener;->mPositionHasChanged:Z

    .line 2385
    :cond_3
    :goto_1
    iget-object v4, p0, Landroid/widget/Editor$PositionListener;->mTempContentsViewCoords:[I

    aput v2, v4, v6

    .line 2386
    iget-object v4, p0, Landroid/widget/Editor$PositionListener;->mTempContentsViewCoords:[I

    aput v1, v4, v5

    goto :goto_0

    .line 2382
    :cond_4
    const/4 v4, 0x2

    new-array v4, v4, [I

    iput-object v4, p0, Landroid/widget/Editor$PositionListener;->mTempContentsViewCoords:[I

    goto :goto_1
.end method

.method private updatePosition()V
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 2346
    iget-object v0, p0, Landroid/widget/Editor$PositionListener;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v0}, Landroid/widget/Editor;->access$000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v3, p0, Landroid/widget/Editor$PositionListener;->mTempCoords:[I

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->getLocationInWindow([I)V

    .line 2348
    iget-object v0, p0, Landroid/widget/Editor$PositionListener;->mTempCoords:[I

    aget v0, v0, v1

    iget v3, p0, Landroid/widget/Editor$PositionListener;->mPositionX:I

    if-ne v0, v3, :cond_0

    iget-object v0, p0, Landroid/widget/Editor$PositionListener;->mTempCoords:[I

    aget v0, v0, v2

    iget v3, p0, Landroid/widget/Editor$PositionListener;->mPositionY:I

    if-eq v0, v3, :cond_1

    :cond_0
    move v0, v2

    :goto_0
    iput-boolean v0, p0, Landroid/widget/Editor$PositionListener;->mPositionHasChanged:Z

    .line 2350
    iget-object v0, p0, Landroid/widget/Editor$PositionListener;->mTempCoords:[I

    aget v0, v0, v1

    iput v0, p0, Landroid/widget/Editor$PositionListener;->mPositionX:I

    .line 2351
    iget-object v0, p0, Landroid/widget/Editor$PositionListener;->mTempCoords:[I

    aget v0, v0, v2

    iput v0, p0, Landroid/widget/Editor$PositionListener;->mPositionY:I

    .line 2352
    return-void

    :cond_1
    move v0, v1

    .line 2348
    goto :goto_0
.end method


# virtual methods
.method public addSubscriber(Landroid/widget/Editor$TextViewPositionListener;Z)V
    .locals 5
    .parameter "positionListener"
    .parameter "canMove"

    .prologue
    .line 2282
    iget v4, p0, Landroid/widget/Editor$PositionListener;->mNumberOfListeners:I

    if-nez v4, :cond_0

    .line 2283
    invoke-direct {p0}, Landroid/widget/Editor$PositionListener;->updatePosition()V

    .line 2284
    iget-object v4, p0, Landroid/widget/Editor$PositionListener;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v4}, Landroid/widget/Editor;->access$000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/TextView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v3

    .line 2285
    .local v3, vto:Landroid/view/ViewTreeObserver;
    invoke-virtual {v3, p0}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 2288
    .end local v3           #vto:Landroid/view/ViewTreeObserver;
    :cond_0
    const/4 v0, -0x1

    .line 2289
    .local v0, emptySlotIndex:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    const/4 v4, 0x6

    if-ge v1, v4, :cond_3

    .line 2290
    iget-object v4, p0, Landroid/widget/Editor$PositionListener;->mPositionListeners:[Landroid/widget/Editor$TextViewPositionListener;

    aget-object v2, v4, v1

    .line 2291
    .local v2, listener:Landroid/widget/Editor$TextViewPositionListener;
    if-ne v2, p1, :cond_1

    .line 2301
    .end local v2           #listener:Landroid/widget/Editor$TextViewPositionListener;
    :goto_1
    return-void

    .line 2293
    .restart local v2       #listener:Landroid/widget/Editor$TextViewPositionListener;
    :cond_1
    if-gez v0, :cond_2

    if-nez v2, :cond_2

    .line 2294
    move v0, v1

    .line 2289
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2298
    .end local v2           #listener:Landroid/widget/Editor$TextViewPositionListener;
    :cond_3
    iget-object v4, p0, Landroid/widget/Editor$PositionListener;->mPositionListeners:[Landroid/widget/Editor$TextViewPositionListener;

    aput-object p1, v4, v0

    .line 2299
    iget-object v4, p0, Landroid/widget/Editor$PositionListener;->mCanMove:[Z

    aput-boolean p2, v4, v0

    .line 2300
    iget v4, p0, Landroid/widget/Editor$PositionListener;->mNumberOfListeners:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Landroid/widget/Editor$PositionListener;->mNumberOfListeners:I

    goto :goto_1
.end method

.method public getPositionX()I
    .locals 1

    .prologue
    .line 2319
    iget v0, p0, Landroid/widget/Editor$PositionListener;->mPositionX:I

    return v0
.end method

.method public getPositionY()I
    .locals 1

    .prologue
    .line 2323
    iget v0, p0, Landroid/widget/Editor$PositionListener;->mPositionY:I

    return v0
.end method

.method public onPreDraw()Z
    .locals 6

    .prologue
    .line 2328
    invoke-direct {p0}, Landroid/widget/Editor$PositionListener;->updatePosition()V

    .line 2329
    invoke-direct {p0}, Landroid/widget/Editor$PositionListener;->checkContentsSizeChanged()V

    .line 2331
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/4 v2, 0x6

    if-ge v0, v2, :cond_2

    .line 2332
    iget-boolean v2, p0, Landroid/widget/Editor$PositionListener;->mPositionHasChanged:Z

    if-nez v2, :cond_0

    iget-boolean v2, p0, Landroid/widget/Editor$PositionListener;->mScrollHasChanged:Z

    if-nez v2, :cond_0

    iget-object v2, p0, Landroid/widget/Editor$PositionListener;->mCanMove:[Z

    aget-boolean v2, v2, v0

    if-eqz v2, :cond_1

    .line 2333
    :cond_0
    iget-object v2, p0, Landroid/widget/Editor$PositionListener;->mPositionListeners:[Landroid/widget/Editor$TextViewPositionListener;

    aget-object v1, v2, v0

    .line 2334
    .local v1, positionListener:Landroid/widget/Editor$TextViewPositionListener;
    if-eqz v1, :cond_1

    .line 2335
    iget v2, p0, Landroid/widget/Editor$PositionListener;->mPositionX:I

    iget v3, p0, Landroid/widget/Editor$PositionListener;->mPositionY:I

    iget-boolean v4, p0, Landroid/widget/Editor$PositionListener;->mPositionHasChanged:Z

    iget-boolean v5, p0, Landroid/widget/Editor$PositionListener;->mScrollHasChanged:Z

    invoke-interface {v1, v2, v3, v4, v5}, Landroid/widget/Editor$TextViewPositionListener;->updatePosition(IIZZ)V

    .line 2331
    .end local v1           #positionListener:Landroid/widget/Editor$TextViewPositionListener;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2341
    :cond_2
    const/4 v2, 0x0

    iput-boolean v2, p0, Landroid/widget/Editor$PositionListener;->mScrollHasChanged:Z

    .line 2342
    const/4 v2, 0x1

    return v2
.end method

.method public onScrollChanged()V
    .locals 1

    .prologue
    .line 2392
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/Editor$PositionListener;->mScrollHasChanged:Z

    .line 2393
    return-void
.end method

.method public removeSubscriber(Landroid/widget/Editor$TextViewPositionListener;)V
    .locals 4
    .parameter "positionListener"

    .prologue
    .line 2304
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/4 v2, 0x6

    if-ge v0, v2, :cond_0

    .line 2305
    iget-object v2, p0, Landroid/widget/Editor$PositionListener;->mPositionListeners:[Landroid/widget/Editor$TextViewPositionListener;

    aget-object v2, v2, v0

    if-ne v2, p1, :cond_2

    .line 2306
    iget-object v2, p0, Landroid/widget/Editor$PositionListener;->mPositionListeners:[Landroid/widget/Editor$TextViewPositionListener;

    const/4 v3, 0x0

    aput-object v3, v2, v0

    .line 2307
    iget v2, p0, Landroid/widget/Editor$PositionListener;->mNumberOfListeners:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Landroid/widget/Editor$PositionListener;->mNumberOfListeners:I

    .line 2312
    :cond_0
    iget v2, p0, Landroid/widget/Editor$PositionListener;->mNumberOfListeners:I

    if-nez v2, :cond_1

    .line 2313
    iget-object v2, p0, Landroid/widget/Editor$PositionListener;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v2}, Landroid/widget/Editor;->access$000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    .line 2314
    .local v1, vto:Landroid/view/ViewTreeObserver;
    invoke-virtual {v1, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 2316
    .end local v1           #vto:Landroid/view/ViewTreeObserver;
    :cond_1
    return-void

    .line 2304
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method