.class Landroid/app/Activity$TintBarInject;
.super Ljava/lang/Object;
.source "Activity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/Activity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "TintBarInject"
.end annotation


# static fields
.field private static DEBUG:Z = false

.field public static final STATUS_BAR_HEIGHT_RES_NAME:Ljava/lang/String; = "status_bar_height"

.field private static TAG:Ljava/lang/String;

.field public static mStatusBarHeight:I

.field private static topShift:I


# instance fields
.field private mAppSetStatusBarColor:I

.field private mDecoViewDrawFirst:Z

.field private mDecoViewDrawFlag:Z

.field private mDecoViewPostCount:I

.field private mDecorViewPaddingTop:I

.field private mDensity:F

.field private mIsActivityFirstStart:Z

.field private mIsAppDrawStatusBar:Z

.field private mIsFloating:Z

.field private mIsFlymeStatusBar:Z

.field private mIsInternalApp:Z

.field private mKeepAppStatusBar:Z

.field private mShowStatusBarColor:Z

.field private mStatusBarColor:I

.field private mStatusBarColorLock:Z

.field private mStatusBarTintEnabled:Z

.field private mThisActivity:Landroid/app/Activity;

.field private mTranslucentStatus:Z

.field private mWindow:Landroid/view/Window;


# direct methods
.method static synthetic -get0(Landroid/app/Activity$TintBarInject;)Z
    .locals 1

    iget-boolean v0, p0, Landroid/app/Activity$TintBarInject;->mDecoViewDrawFirst:Z

    return v0
.end method

.method static synthetic -get1(Landroid/app/Activity$TintBarInject;)I
    .locals 1

    iget v0, p0, Landroid/app/Activity$TintBarInject;->mDecoViewPostCount:I

    return v0
.end method

.method static synthetic -get2(Landroid/app/Activity$TintBarInject;)Z
    .locals 1

    iget-boolean v0, p0, Landroid/app/Activity$TintBarInject;->mIsFlymeStatusBar:Z

    return v0
.end method

.method static synthetic -get3(Landroid/app/Activity$TintBarInject;)I
    .locals 1

    iget v0, p0, Landroid/app/Activity$TintBarInject;->mStatusBarColor:I

    return v0
.end method

.method static synthetic -get4(Landroid/app/Activity$TintBarInject;)Landroid/view/Window;
    .locals 1

    iget-object v0, p0, Landroid/app/Activity$TintBarInject;->mWindow:Landroid/view/Window;

    return-object v0
.end method

.method static synthetic -set0(Landroid/app/Activity$TintBarInject;Z)Z
    .locals 0

    iput-boolean p1, p0, Landroid/app/Activity$TintBarInject;->mDecoViewDrawFlag:Z

    return p1
.end method

.method static synthetic -set1(Landroid/app/Activity$TintBarInject;I)I
    .locals 0

    iput p1, p0, Landroid/app/Activity$TintBarInject;->mDecoViewPostCount:I

    return p1
.end method

.method static synthetic -wrap0(Landroid/app/Activity$TintBarInject;Landroid/view/View;Z)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "delayDraw"    # Z

    .prologue
    invoke-direct {p0, p1, p2}, Landroid/app/Activity$TintBarInject;->onDrawDecorViewInner(Landroid/view/View;Z)V

    return-void
.end method

.method static synthetic -wrap1(Landroid/app/Activity$TintBarInject;Landroid/view/View;I)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "delay"    # I

    .prologue
    invoke-direct {p0, p1, p2}, Landroid/app/Activity$TintBarInject;->onDrawDecorViewInner(Landroid/view/View;I)V

    return-void
.end method

.method static synthetic -wrap2(Landroid/app/Activity$TintBarInject;ZLandroid/view/WindowManager$LayoutParams;Z)V
    .locals 0
    .param p1, "on"    # Z
    .param p2, "winParams"    # Landroid/view/WindowManager$LayoutParams;
    .param p3, "change"    # Z

    .prologue
    invoke-direct {p0, p1, p2, p3}, Landroid/app/Activity$TintBarInject;->setDrawsSystemBarBackgrounds(ZLandroid/view/WindowManager$LayoutParams;Z)V

    return-void
.end method

.method static synthetic -wrap3(Landroid/app/Activity$TintBarInject;I)V
    .locals 0
    .param p1, "color"    # I

    .prologue
    invoke-direct {p0, p1}, Landroid/app/Activity$TintBarInject;->setStatusBarColor(I)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .prologue
    const-string v0, "STATUS_BAR_TINT"

    sput-object v0, Landroid/app/Activity$TintBarInject;->TAG:Ljava/lang/String;

    sget-object v0, Landroid/app/Activity$TintBarInject;->TAG:Ljava/lang/String;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Landroid/app/Activity$TintBarInject;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v1, p0, Landroid/app/Activity$TintBarInject;->mStatusBarColor:I

    iput-boolean v1, p0, Landroid/app/Activity$TintBarInject;->mKeepAppStatusBar:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/Activity$TintBarInject;->mIsActivityFirstStart:Z

    iput v1, p0, Landroid/app/Activity$TintBarInject;->mDecorViewPaddingTop:I

    iput-boolean v1, p0, Landroid/app/Activity$TintBarInject;->mDecoViewDrawFirst:Z

    iput-boolean v1, p0, Landroid/app/Activity$TintBarInject;->mDecoViewDrawFlag:Z

    iput v1, p0, Landroid/app/Activity$TintBarInject;->mDecoViewPostCount:I

    iput-object p1, p0, Landroid/app/Activity$TintBarInject;->mThisActivity:Landroid/app/Activity;

    return-void
.end method

.method private static color2String(I)Ljava/lang/String;
    .locals 4
    .param p0, "color"    # I

    .prologue
    const-string v0, "argb(%d,%d,%d,%d)"

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0}, Landroid/graphics/Color;->alpha(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x3

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getAutomaticColor(Landroid/view/View;Landroid/graphics/Canvas;Landroid/graphics/Bitmap;I)I
    .locals 8
    .param p1, "parent"    # Landroid/view/View;
    .param p2, "canvas"    # Landroid/graphics/Canvas;
    .param p3, "bitmap"    # Landroid/graphics/Bitmap;
    .param p4, "pos"    # I

    .prologue
    const/4 v2, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v3

    invoke-virtual {p2, v0, v3}, Landroid/graphics/Canvas;->setViewport(II)V

    invoke-virtual {p1}, Landroid/view/View;->getScrollX()I

    move-result v0

    neg-int v0, v0

    int-to-float v0, v0

    invoke-virtual {p1}, Landroid/view/View;->getScrollY()I

    move-result v3

    neg-int v3, v3

    sub-int/2addr v3, p4

    int-to-float v3, v3

    invoke-virtual {p2, v0, v3}, Landroid/graphics/Canvas;->translate(FF)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/Activity$TintBarInject;->mStatusBarColorLock:Z

    invoke-virtual {p1, p2}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    iput-boolean v2, p0, Landroid/app/Activity$TintBarInject;->mStatusBarColorLock:Z

    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    new-array v1, v0, [I

    .local v1, "pixels":[I
    array-length v3, v1

    array-length v6, v1

    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    move-object v0, p3

    move v4, v2

    move v5, v2

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    invoke-direct {p0, v1}, Landroid/app/Activity$TintBarInject;->getMainColorFromBitmap([I)I

    move-result v0

    return v0
.end method

.method private getAutomaticColor(Landroid/view/View;)Ljava/lang/Integer;
    .locals 12
    .param p1, "parent"    # Landroid/view/View;

    .prologue
    const/4 v11, 0x0

    const/16 v10, 0x64

    if-eqz p1, :cond_4

    :try_start_0
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v7

    if-lez v7, :cond_4

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v7

    if-lez v7, :cond_4

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v7

    sget-object v8, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/4 v9, 0x1

    invoke-static {v7, v9, v8}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .local v1, "bitmap":Landroid/graphics/Bitmap;
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .local v2, "canvas":Landroid/graphics/Canvas;
    const/4 v5, 0x0

    .local v5, "isVerify":Z
    const/4 v4, 0x0

    .local v4, "color":I
    instance-of v7, p1, Landroid/view/ViewGroup;

    if-eqz v7, :cond_0

    move-object v0, p1

    check-cast v0, Landroid/view/ViewGroup;

    move-object v7, v0

    invoke-virtual {v7}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v7

    if-lez v7, :cond_0

    move-object v0, p1

    check-cast v0, Landroid/view/ViewGroup;

    move-object v7, v0

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .local v3, "child":Landroid/view/View;
    instance-of v7, v3, Landroid/view/ViewGroup;

    if-eqz v7, :cond_0

    iget v7, p0, Landroid/app/Activity$TintBarInject;->mDensity:F

    const/high16 v8, 0x40000000    # 2.0f

    mul-float/2addr v7, v8

    float-to-int v7, v7

    add-int/lit8 v7, v7, 0x1

    invoke-direct {p0, v3, v2, v1, v7}, Landroid/app/Activity$TintBarInject;->getAutomaticColor(Landroid/view/View;Landroid/graphics/Canvas;Landroid/graphics/Bitmap;I)I

    move-result v4

    iget-boolean v7, p0, Landroid/app/Activity$TintBarInject;->mTranslucentStatus:Z

    if-eqz v7, :cond_3

    invoke-static {v4}, Landroid/graphics/Color;->alpha(I)I

    move-result v7

    if-le v7, v10, :cond_2

    const/4 v5, 0x1

    .end local v3    # "child":Landroid/view/View;
    .end local v5    # "isVerify":Z
    :cond_0
    :goto_0
    if-nez v5, :cond_1

    sget v7, Landroid/app/Activity$TintBarInject;->topShift:I

    invoke-direct {p0, p1, v2, v1, v7}, Landroid/app/Activity$TintBarInject;->getAutomaticColor(Landroid/view/View;Landroid/graphics/Canvas;Landroid/graphics/Bitmap;I)I

    move-result v4

    :cond_1
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    invoke-static {v4}, Landroid/graphics/Color;->alpha(I)I

    move-result v7

    if-le v7, v10, :cond_4

    invoke-static {v4}, Landroid/graphics/Color;->red(I)I

    move-result v7

    invoke-static {v4}, Landroid/graphics/Color;->green(I)I

    move-result v8

    invoke-static {v4}, Landroid/graphics/Color;->blue(I)I

    move-result v9

    const/16 v10, 0xff

    invoke-static {v10, v7, v8, v9}, Landroid/graphics/Color;->argb(IIII)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    return-object v7

    .restart local v3    # "child":Landroid/view/View;
    .restart local v5    # "isVerify":Z
    :cond_2
    const/4 v5, 0x0

    goto :goto_0

    :cond_3
    invoke-direct {p0, v4}, Landroid/app/Activity$TintBarInject;->isVerifyColorEx(I)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    .local v5, "isVerify":Z
    goto :goto_0

    .end local v1    # "bitmap":Landroid/graphics/Bitmap;
    .end local v2    # "canvas":Landroid/graphics/Canvas;
    .end local v3    # "child":Landroid/view/View;
    .end local v4    # "color":I
    .end local v5    # "isVerify":Z
    :catch_0
    move-exception v6

    :cond_4
    return-object v11
.end method

.method private getMainColorFromBitmap([I)I
    .locals 18
    .param p1, "pixels"    # [I

    .prologue
    const/4 v8, 0x0

    .local v8, "mainColor":I
    if-eqz p1, :cond_3

    move-object/from16 v0, p1

    array-length v11, v0

    if-lez v11, :cond_3

    new-instance v4, Landroid/util/SparseIntArray;

    invoke-direct {v4}, Landroid/util/SparseIntArray;-><init>()V

    .local v4, "colors":Landroid/util/SparseIntArray;
    const/4 v11, 0x0

    move-object/from16 v0, p1

    array-length v12, v0

    :goto_0
    if-ge v11, v12, :cond_0

    aget v3, p1, v11

    .local v3, "color":I
    const/4 v13, 0x0

    invoke-virtual {v4, v3, v13}, Landroid/util/SparseIntArray;->get(II)I

    move-result v5

    .local v5, "count":I
    add-int/lit8 v13, v5, 0x1

    invoke-virtual {v4, v3, v13}, Landroid/util/SparseIntArray;->put(II)V

    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .end local v3    # "color":I
    .end local v5    # "count":I
    :cond_0
    const/4 v9, 0x0

    .local v9, "maxCount":I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_1
    invoke-virtual {v4}, Landroid/util/SparseIntArray;->size()I

    move-result v11

    if-ge v7, v11, :cond_2

    invoke-virtual {v4, v7}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v11

    if-ge v9, v11, :cond_1

    invoke-virtual {v4, v7}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v9

    invoke-virtual {v4, v7}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v8

    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_2
    int-to-double v12, v9

    move-object/from16 v0, p1

    array-length v11, v0

    int-to-double v14, v11

    const-wide v16, 0x3fb999999999999aL    # 0.1

    mul-double v14, v14, v16

    cmpg-double v11, v12, v14

    if-gez v11, :cond_3

    invoke-static {v8}, Landroid/graphics/Color;->red(I)I

    move-result v10

    .local v10, "r":I
    invoke-static {v8}, Landroid/graphics/Color;->green(I)I

    move-result v6

    .local v6, "g":I
    invoke-static {v8}, Landroid/graphics/Color;->blue(I)I

    move-result v2

    .local v2, "b":I
    invoke-static {v8}, Landroid/graphics/Color;->alpha(I)I

    move-result v11

    add-int/lit8 v12, v10, -0x5

    const/4 v13, 0x0

    invoke-static {v13, v12}, Ljava/lang/Math;->max(II)I

    move-result v12

    add-int/lit8 v13, v6, -0x5

    const/4 v14, 0x0

    invoke-static {v14, v13}, Ljava/lang/Math;->max(II)I

    move-result v13

    add-int/lit8 v14, v2, -0x5

    const/4 v15, 0x0

    invoke-static {v15, v14}, Ljava/lang/Math;->max(II)I

    move-result v14

    invoke-static {v11, v12, v13, v14}, Landroid/graphics/Color;->argb(IIII)I

    move-result v8

    .end local v2    # "b":I
    .end local v4    # "colors":Landroid/util/SparseIntArray;
    .end local v6    # "g":I
    .end local v7    # "i":I
    .end local v9    # "maxCount":I
    .end local v10    # "r":I
    :cond_3
    return v8
.end method

.method private isAppDrawsSystemBarBackgrounds()Z
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/app/Activity$TintBarInject;->mWindow:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    invoke-static {v0}, Landroid/app/Activity$TintBarInject;->isAppDrawsSystemBarBackgrounds(Landroid/view/WindowManager$LayoutParams;)Z

    move-result v0

    return v0
.end method

.method private static isAppDrawsSystemBarBackgrounds(Landroid/view/WindowManager$LayoutParams;)Z
    .locals 4
    .param p0, "winParams"    # Landroid/view/WindowManager$LayoutParams;

    .prologue
    const/high16 v0, -0x80000000

    .local v0, "bits":I
    iget v2, p0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v3, -0x80000000

    or-int v1, v2, v3

    .local v1, "flags":I
    iget v2, p0, Landroid/view/WindowManager$LayoutParams;->flags:I

    if-ne v1, v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private static isBlackColor(I)Z
    .locals 4
    .param p0, "color"    # I

    .prologue
    const/4 v0, 0x0

    const/16 v3, 0x32

    invoke-static {p0}, Landroid/graphics/Color;->alpha(I)I

    move-result v1

    const/16 v2, 0xc8

    if-le v1, v2, :cond_0

    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v1

    if-ge v1, v3, :cond_0

    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result v1

    if-ge v1, v3, :cond_0

    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v1

    if-ge v1, v3, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private static isDarkColor(I)Z
    .locals 4
    .param p0, "color"    # I

    .prologue
    const/4 v1, 0x0

    const/16 v3, 0xc8

    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v2

    if-le v2, v3, :cond_1

    const/4 v0, 0x1

    .local v0, "isDark":Z
    :goto_0
    if-eqz v0, :cond_2

    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result v2

    if-le v2, v3, :cond_2

    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_3

    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v2

    if-le v2, v3, :cond_3

    const/4 v0, 0x1

    :goto_2
    if-eqz v0, :cond_0

    invoke-static {p0}, Landroid/graphics/Color;->alpha(I)I

    move-result v2

    if-le v2, v3, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    .end local v0    # "isDark":Z
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "isDark":Z
    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    goto :goto_2
.end method

.method private isShowStatusBarColor(Landroid/view/WindowManager$LayoutParams;)Z
    .locals 4
    .param p1, "attrs"    # Landroid/view/WindowManager$LayoutParams;

    .prologue
    const/4 v1, 0x0

    iget v2, p1, Landroid/view/WindowManager$LayoutParams;->systemUiVisibility:I

    iget v3, p1, Landroid/view/WindowManager$LayoutParams;->subtreeSystemUiVisibility:I

    or-int v0, v2, v3

    .local v0, "sysUiVisibility":I
    and-int/lit8 v2, v0, 0x4

    if-nez v2, :cond_0

    and-int/lit16 v2, v0, 0x400

    if-nez v2, :cond_0

    const/high16 v2, 0x40000000    # 2.0f

    and-int/2addr v2, v0

    if-nez v2, :cond_0

    iget v2, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v2, v2, 0x400

    if-nez v2, :cond_0

    iget v2, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v3, 0x4000000

    and-int/2addr v2, v3

    if-nez v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method private static isSimilarColor(II)Z
    .locals 11
    .param p0, "color1"    # I
    .param p1, "color2"    # I

    .prologue
    const/16 v10, -0xa

    invoke-static {p0}, Landroid/graphics/Color;->alpha(I)I

    move-result v8

    if-lez v8, :cond_0

    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v8

    if-lez v8, :cond_0

    const/4 v7, 0x1

    .local v7, "similar":Z
    :goto_0
    if-eqz v7, :cond_8

    invoke-static {p1}, Landroid/app/Activity$TintBarInject;->isBlackColor(I)Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-static {p0}, Landroid/graphics/Color;->alpha(I)I

    move-result v8

    if-lez v8, :cond_1

    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v8

    if-lez v8, :cond_1

    const/4 v7, 0x1

    :goto_1
    if-nez v7, :cond_8

    invoke-static {p0}, Landroid/graphics/Color;->alpha(I)I

    move-result v8

    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v9

    sub-int v0, v8, v9

    .local v0, "alpha":I
    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v8

    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v9

    sub-int v6, v8, v9

    .local v6, "red":I
    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v8

    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v9

    sub-int v3, v8, v9

    .local v3, "green":I
    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result v8

    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result v9

    sub-int v1, v8, v9

    .local v1, "blue":I
    invoke-static {v6, v3}, Ljava/lang/Math;->min(II)I

    move-result v8

    invoke-static {v8, v1}, Ljava/lang/Math;->min(II)I

    move-result v5

    .local v5, "min":I
    invoke-static {v6, v3}, Ljava/lang/Math;->max(II)I

    move-result v8

    invoke-static {v8, v1}, Ljava/lang/Math;->max(II)I

    move-result v4

    .local v4, "max":I
    sub-int v2, v4, v5

    .local v2, "diff":I
    if-nez v2, :cond_3

    const/4 v8, -0x1

    if-ne p0, v8, :cond_2

    const/16 v2, 0x78

    :goto_2
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v8

    const/16 v9, 0x64

    if-ge v8, v9, :cond_5

    if-le v6, v10, :cond_5

    if-ge v6, v2, :cond_5

    const/4 v7, 0x1

    :goto_3
    if-eqz v7, :cond_6

    if-le v3, v10, :cond_6

    if-ge v3, v2, :cond_6

    const/4 v7, 0x1

    :goto_4
    if-eqz v7, :cond_7

    if-le v1, v10, :cond_7

    if-ge v1, v2, :cond_7

    const/4 v7, 0x1

    :goto_5
    return v7

    .end local v0    # "alpha":I
    .end local v1    # "blue":I
    .end local v2    # "diff":I
    .end local v3    # "green":I
    .end local v4    # "max":I
    .end local v5    # "min":I
    .end local v6    # "red":I
    .end local v7    # "similar":Z
    :cond_0
    const/4 v7, 0x0

    .restart local v7    # "similar":Z
    goto :goto_0

    :cond_1
    const/4 v7, 0x0

    goto :goto_1

    .restart local v0    # "alpha":I
    .restart local v1    # "blue":I
    .restart local v2    # "diff":I
    .restart local v3    # "green":I
    .restart local v4    # "max":I
    .restart local v5    # "min":I
    .restart local v6    # "red":I
    :cond_2
    const/16 v2, 0x64

    goto :goto_2

    :cond_3
    const/16 v8, 0x1e

    if-ge v2, v8, :cond_4

    const/16 v2, 0x64

    goto :goto_2

    :cond_4
    const/16 v2, 0x46

    goto :goto_2

    :cond_5
    const/4 v7, 0x0

    goto :goto_3

    :cond_6
    const/4 v7, 0x0

    goto :goto_4

    :cond_7
    const/4 v7, 0x0

    goto :goto_5

    .end local v0    # "alpha":I
    .end local v1    # "blue":I
    .end local v2    # "diff":I
    .end local v3    # "green":I
    .end local v4    # "max":I
    .end local v5    # "min":I
    .end local v6    # "red":I
    :cond_8
    return v7
.end method

.method private isVerifyColor(I)Z
    .locals 3
    .param p1, "color"    # I

    .prologue
    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v1

    const/16 v2, 0xff

    if-ne v1, v2, :cond_1

    const/4 v0, 0x1

    .local v0, "isVerify":Z
    :goto_0
    iget-boolean v1, p0, Landroid/app/Activity$TintBarInject;->mIsAppDrawStatusBar:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Landroid/app/Activity$TintBarInject;->mTranslucentStatus:Z

    if-eqz v1, :cond_2

    :cond_0
    return v0

    .end local v0    # "isVerify":Z
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "isVerify":Z
    goto :goto_0

    :cond_2
    iget-boolean v1, p0, Landroid/app/Activity$TintBarInject;->mIsInternalApp:Z

    if-nez v1, :cond_0

    if-eqz v0, :cond_0

    iget v1, p0, Landroid/app/Activity$TintBarInject;->mAppSetStatusBarColor:I

    invoke-static {p1, v1}, Landroid/app/Activity$TintBarInject;->isSimilarColor(II)Z

    move-result v1

    return v1
.end method

.method private isVerifyColor(Ljava/lang/Integer;)Z
    .locals 3
    .param p1, "color"    # Ljava/lang/Integer;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Landroid/graphics/Color;->blue(I)I

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Landroid/graphics/Color;->red(I)I

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Landroid/graphics/Color;->green(I)I

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0

    :cond_2
    return v1
.end method

.method private isVerifyColorEx(I)Z
    .locals 4
    .param p1, "color"    # I

    .prologue
    const/16 v3, 0xff

    const/4 v2, 0x0

    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v1

    if-eqz v1, :cond_2

    const/4 v0, 0x1

    .local v0, "isVerify":Z
    :goto_0
    if-eqz v0, :cond_6

    iget v1, p0, Landroid/app/Activity$TintBarInject;->mAppSetStatusBarColor:I

    if-eq v1, p1, :cond_6

    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v1

    if-lez v1, :cond_3

    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v1

    if-ge v1, v3, :cond_3

    const/4 v0, 0x1

    :goto_1
    if-nez v0, :cond_0

    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v1

    if-lez v1, :cond_4

    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v1

    if-ge v1, v3, :cond_4

    :cond_0
    const/4 v0, 0x1

    :goto_2
    if-nez v0, :cond_1

    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result v1

    if-lez v1, :cond_5

    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result v1

    if-ge v1, v3, :cond_5

    :cond_1
    const/4 v0, 0x1

    :goto_3
    return v0

    .end local v0    # "isVerify":Z
    :cond_2
    const/4 v0, 0x0

    .restart local v0    # "isVerify":Z
    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    goto :goto_1

    :cond_4
    const/4 v0, 0x0

    goto :goto_2

    :cond_5
    const/4 v0, 0x0

    goto :goto_3

    :cond_6
    return v2
.end method

.method private onDrawDecorViewInner(Landroid/view/View;I)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "delay"    # I

    .prologue
    new-instance v0, Landroid/app/Activity$TintBarInject$2;

    invoke-direct {v0, p0, p2}, Landroid/app/Activity$TintBarInject$2;-><init>(Landroid/app/Activity$TintBarInject;I)V

    int-to-long v2, p2

    invoke-virtual {p1, v0, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private onDrawDecorViewInner(Landroid/view/View;Z)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;
    .param p2, "delayDraw"    # Z

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    iput-boolean v3, p0, Landroid/app/Activity$TintBarInject;->mDecoViewDrawFlag:Z

    invoke-direct {p0, p1}, Landroid/app/Activity$TintBarInject;->getAutomaticColor(Landroid/view/View;)Ljava/lang/Integer;

    move-result-object v0

    .local v0, "color":Ljava/lang/Integer;
    invoke-direct {p0, v0}, Landroid/app/Activity$TintBarInject;->isVerifyColor(Ljava/lang/Integer;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-direct {p0, v1}, Landroid/app/Activity$TintBarInject;->setStatusBarColor(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz p2, :cond_2

    const/16 v1, 0x1f4

    invoke-direct {p0, p1, v1}, Landroid/app/Activity$TintBarInject;->onDrawDecorViewInner(Landroid/view/View;I)V

    goto :goto_0

    :cond_2
    iget v1, p0, Landroid/app/Activity$TintBarInject;->mStatusBarColor:I

    invoke-direct {p0, v1}, Landroid/app/Activity$TintBarInject;->isVerifyColor(I)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Landroid/app/Activity$TintBarInject;->mWindow:Landroid/view/Window;

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v4, 0x4000000

    and-int/2addr v1, v4

    if-eqz v1, :cond_3

    move v1, v2

    :goto_1
    iput-boolean v1, p0, Landroid/app/Activity$TintBarInject;->mTranslucentStatus:Z

    iget-boolean v1, p0, Landroid/app/Activity$TintBarInject;->mTranslucentStatus:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Landroid/app/Activity$TintBarInject;->mIsAppDrawStatusBar:Z

    if-eqz v1, :cond_5

    iget v1, p0, Landroid/app/Activity$TintBarInject;->mAppSetStatusBarColor:I

    invoke-static {v1}, Landroid/graphics/Color;->alpha(I)I

    move-result v1

    const/16 v4, 0x64

    if-le v1, v4, :cond_4

    iget v1, p0, Landroid/app/Activity$TintBarInject;->mAppSetStatusBarColor:I

    invoke-static {v1}, Landroid/app/Activity$TintBarInject;->isDarkColor(I)Z

    move-result v1

    :goto_2
    invoke-direct {p0, v1}, Landroid/app/Activity$TintBarInject;->setStatusBarDarkIcon(Z)V

    iput-boolean v2, p0, Landroid/app/Activity$TintBarInject;->mStatusBarColorLock:Z

    iget-object v1, p0, Landroid/app/Activity$TintBarInject;->mWindow:Landroid/view/Window;

    iget v2, p0, Landroid/app/Activity$TintBarInject;->mAppSetStatusBarColor:I

    invoke-virtual {v1, v2}, Landroid/view/Window;->setStatusBarColor(I)V

    iput-boolean v3, p0, Landroid/app/Activity$TintBarInject;->mStatusBarColorLock:Z

    goto :goto_0

    :cond_3
    move v1, v3

    goto :goto_1

    :cond_4
    move v1, v3

    goto :goto_2

    :cond_5
    invoke-direct {p0, v3}, Landroid/app/Activity$TintBarInject;->setStatusBarDarkIcon(Z)V

    iput-boolean v2, p0, Landroid/app/Activity$TintBarInject;->mStatusBarColorLock:Z

    iget-object v1, p0, Landroid/app/Activity$TintBarInject;->mWindow:Landroid/view/Window;

    const/high16 v2, -0x1000000

    invoke-virtual {v1, v2}, Landroid/view/Window;->setStatusBarColor(I)V

    iput-boolean v3, p0, Landroid/app/Activity$TintBarInject;->mStatusBarColorLock:Z

    goto :goto_0
.end method

.method private postDrawDecorViewInner()V
    .locals 2

    .prologue
    iget-object v0, p0, Landroid/app/Activity$TintBarInject;->mWindow:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroid/app/Activity$TintBarInject;->onDrawDecorViewInner(Landroid/view/View;I)V

    return-void
.end method

.method private setDrawsSystemBarBackgrounds(ZLandroid/view/WindowManager$LayoutParams;Z)V
    .locals 3
    .param p1, "on"    # Z
    .param p2, "winParams"    # Landroid/view/WindowManager$LayoutParams;
    .param p3, "change"    # Z

    .prologue
    iget-boolean v1, p0, Landroid/app/Activity$TintBarInject;->mIsFlymeStatusBar:Z

    if-nez v1, :cond_0

    invoke-direct {p0}, Landroid/app/Activity$TintBarInject;->isAppDrawsSystemBarBackgrounds()Z

    move-result v1

    iput-boolean v1, p0, Landroid/app/Activity$TintBarInject;->mIsAppDrawStatusBar:Z

    :cond_0
    iget-boolean v1, p0, Landroid/app/Activity$TintBarInject;->mIsAppDrawStatusBar:Z

    if-nez v1, :cond_2

    iget-boolean v1, p0, Landroid/app/Activity$TintBarInject;->mIsFlymeStatusBar:Z

    if-eq v1, p1, :cond_2

    iput-boolean p1, p0, Landroid/app/Activity$TintBarInject;->mIsFlymeStatusBar:Z

    const/high16 v0, -0x80000000

    .local v0, "bits":I
    if-eqz p1, :cond_3

    iget v1, p2, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v2, -0x80000000

    or-int/2addr v1, v2

    iput v1, p2, Landroid/view/WindowManager$LayoutParams;->flags:I

    :goto_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/app/Activity$TintBarInject;->mStatusBarColorLock:Z

    if-eqz p3, :cond_1

    iget-object v1, p0, Landroid/app/Activity$TintBarInject;->mWindow:Landroid/view/Window;

    invoke-virtual {v1, p2}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    :cond_1
    iget-object v1, p0, Landroid/app/Activity$TintBarInject;->mWindow:Landroid/view/Window;

    invoke-virtual {v1}, Landroid/view/Window;->getStatusBarColor()I

    move-result v1

    invoke-static {v1}, Landroid/app/Activity$TintBarInject;->isDarkColor(I)Z

    move-result v1

    invoke-direct {p0, v1}, Landroid/app/Activity$TintBarInject;->setStatusBarDarkIcon(Z)V

    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/app/Activity$TintBarInject;->mStatusBarColorLock:Z

    .end local v0    # "bits":I
    :cond_2
    return-void

    .restart local v0    # "bits":I
    :cond_3
    iget v1, p2, Landroid/view/WindowManager$LayoutParams;->flags:I

    const v2, 0x7fffffff

    and-int/2addr v1, v2

    iput v1, p2, Landroid/view/WindowManager$LayoutParams;->flags:I

    goto :goto_0
.end method

.method private setStatusBarColor(I)V
    .locals 6
    .param p1, "color"    # I

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, p1}, Landroid/app/Activity$TintBarInject;->isVerifyColor(I)Z

    move-result v1

    if-eqz v1, :cond_4

    iput p1, p0, Landroid/app/Activity$TintBarInject;->mStatusBarColor:I

    iget-boolean v1, p0, Landroid/app/Activity$TintBarInject;->mTranslucentStatus:Z

    if-eqz v1, :cond_0

    invoke-direct {p0}, Landroid/app/Activity$TintBarInject;->isAppDrawsSystemBarBackgrounds()Z

    move-result v1

    iput-boolean v1, p0, Landroid/app/Activity$TintBarInject;->mIsAppDrawStatusBar:Z

    invoke-direct {p0, p1}, Landroid/app/Activity$TintBarInject;->setStatusBarDarkIcon(I)V

    :cond_0
    iget-boolean v1, p0, Landroid/app/Activity$TintBarInject;->mKeepAppStatusBar:Z

    if-nez v1, :cond_4

    iget-boolean v1, p0, Landroid/app/Activity$TintBarInject;->mIsFlymeStatusBar:Z

    if-nez v1, :cond_1

    iget-boolean v1, p0, Landroid/app/Activity$TintBarInject;->mIsAppDrawStatusBar:Z

    if-eqz v1, :cond_4

    :cond_1
    iget-boolean v1, p0, Landroid/app/Activity$TintBarInject;->mIsInternalApp:Z

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Landroid/app/Activity$TintBarInject;->mIsFlymeStatusBar:Z

    if-eqz v1, :cond_3

    :cond_2
    iget-object v1, p0, Landroid/app/Activity$TintBarInject;->mWindow:Landroid/view/Window;

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    invoke-direct {p0, v2, v1, v2}, Landroid/app/Activity$TintBarInject;->setDrawsSystemBarBackgrounds(ZLandroid/view/WindowManager$LayoutParams;Z)V

    iput-boolean v2, p0, Landroid/app/Activity$TintBarInject;->mStatusBarColorLock:Z

    iget-object v1, p0, Landroid/app/Activity$TintBarInject;->mWindow:Landroid/view/Window;

    iget v2, p0, Landroid/app/Activity$TintBarInject;->mStatusBarColor:I

    invoke-virtual {v1, v2}, Landroid/view/Window;->setStatusBarColor(I)V

    iput-boolean v3, p0, Landroid/app/Activity$TintBarInject;->mStatusBarColorLock:Z

    iget-boolean v1, p0, Landroid/app/Activity$TintBarInject;->mIsFloating:Z

    if-eqz v1, :cond_3

    iget v1, p0, Landroid/app/Activity$TintBarInject;->mDecorViewPaddingTop:I

    if-nez v1, :cond_3

    iget-object v1, p0, Landroid/app/Activity$TintBarInject;->mWindow:Landroid/view/Window;

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .local v0, "dec":Landroid/view/View;
    iget-object v1, p0, Landroid/app/Activity$TintBarInject;->mWindow:Landroid/view/Window;

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    move-result v2

    sget v3, Landroid/app/Activity$TintBarInject;->mStatusBarHeight:I

    invoke-virtual {v0}, Landroid/view/View;->getPaddingRight()I

    move-result v4

    invoke-virtual {v0}, Landroid/view/View;->getPaddingBottom()I

    move-result v5

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/view/View;->setPadding(IIII)V

    .end local v0    # "dec":Landroid/view/View;
    :cond_3
    invoke-direct {p0, p1}, Landroid/app/Activity$TintBarInject;->setStatusBarDarkIcon(I)V

    :cond_4
    return-void
.end method

.method private setStatusBarDarkIcon(I)V
    .locals 3
    .param p1, "color"    # I

    .prologue
    iget-object v1, p0, Landroid/app/Activity$TintBarInject;->mWindow:Landroid/view/Window;

    invoke-virtual {v1}, Landroid/view/Window;->isAutoStatusBarIcon()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Landroid/app/Activity$TintBarInject;->mIsInternalApp:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Landroid/app/Activity$TintBarInject;->mTranslucentStatus:Z

    if-eqz v1, :cond_2

    :cond_0
    invoke-static {p1}, Landroid/app/Activity$TintBarInject;->isDarkColor(I)Z

    move-result v1

    invoke-direct {p0, v1}, Landroid/app/Activity$TintBarInject;->setStatusBarDarkIcon(Z)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-boolean v1, p0, Landroid/app/Activity$TintBarInject;->mIsFlymeStatusBar:Z

    if-nez v1, :cond_3

    iget-boolean v1, p0, Landroid/app/Activity$TintBarInject;->mIsAppDrawStatusBar:Z

    if-eqz v1, :cond_1

    :cond_3
    iget-object v1, p0, Landroid/app/Activity$TintBarInject;->mWindow:Landroid/view/Window;

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v2, 0x4000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_4

    const/4 v0, 0x1

    .local v0, "canSet":Z
    :goto_1
    if-nez v0, :cond_5

    invoke-direct {p0}, Landroid/app/Activity$TintBarInject;->isAppDrawsSystemBarBackgrounds()Z

    move-result v0

    .end local v0    # "canSet":Z
    :goto_2
    if-eqz v0, :cond_1

    invoke-static {p1}, Landroid/app/Activity$TintBarInject;->isDarkColor(I)Z

    move-result v1

    invoke-direct {p0, v1}, Landroid/app/Activity$TintBarInject;->setStatusBarDarkIcon(Z)V

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    .restart local v0    # "canSet":Z
    goto :goto_1

    :cond_5
    const/4 v0, 0x1

    goto :goto_2
.end method

.method private setStatusBarDarkIcon(Z)V
    .locals 1
    .param p1, "dark"    # Z

    .prologue
    iget-object v0, p0, Landroid/app/Activity$TintBarInject;->mWindow:Landroid/view/Window;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/app/Activity$TintBarInject;->mWindow:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->isAutoStatusBarIcon()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/app/Activity$TintBarInject;->mWindow:Landroid/view/Window;

    invoke-virtual {v0, p1}, Landroid/view/Window;->setStatusBarDarkIcon(Z)V

    :cond_0
    return-void
.end method

.method private updateStatusBarHeight()V
    .locals 8

    .prologue
    const-class v3, Landroid/app/Activity$TintBarInject;

    monitor-enter v3

    :try_start_0
    sget v2, Landroid/app/Activity$TintBarInject;->mStatusBarHeight:I

    if-nez v2, :cond_0

    iget-object v2, p0, Landroid/app/Activity$TintBarInject;->mThisActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .local v0, "res":Landroid/content/res/Resources;
    const-string v2, "status_bar_height"

    const-string v4, "dimen"

    const-string v5, "android"

    invoke-virtual {v0, v2, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .local v1, "resourceId":I
    if-lez v1, :cond_0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    sput v2, Landroid/app/Activity$TintBarInject;->mStatusBarHeight:I

    sget v2, Landroid/app/Activity$TintBarInject;->mStatusBarHeight:I

    int-to-float v2, v2

    iget v4, p0, Landroid/app/Activity$TintBarInject;->mDensity:F

    add-float/2addr v2, v4

    float-to-double v4, v2

    const-wide/high16 v6, 0x4004000000000000L    # 2.5

    add-double/2addr v4, v6

    double-to-int v2, v4

    sput v2, Landroid/app/Activity$TintBarInject;->topShift:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v0    # "res":Landroid/content/res/Resources;
    .end local v1    # "resourceId":I
    :cond_0
    monitor-exit v3

    return-void

    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method


# virtual methods
.method apply(ZLandroid/view/WindowManager$LayoutParams;Z)V
    .locals 9
    .param p1, "updateColor"    # Z
    .param p2, "layoutParams"    # Landroid/view/WindowManager$LayoutParams;
    .param p3, "change"    # Z

    .prologue
    const/high16 v8, 0x4000000

    const/4 v7, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    iget-object v4, p0, Landroid/app/Activity$TintBarInject;->mWindow:Landroid/view/Window;

    if-eqz v4, :cond_2

    iget-object v4, p0, Landroid/app/Activity$TintBarInject;->mWindow:Landroid/view/Window;

    invoke-virtual {v4}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Landroid/app/Activity$TintBarInject;->mWindow:Landroid/view/Window;

    invoke-virtual {v4}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getX()F

    move-result v4

    cmpl-float v4, v4, v7

    if-nez v4, :cond_1

    iget-object v4, p0, Landroid/app/Activity$TintBarInject;->mWindow:Landroid/view/Window;

    invoke-virtual {v4}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getY()F

    move-result v4

    cmpl-float v4, v4, v7

    if-nez v4, :cond_1

    const/4 v1, 0x1

    .local v1, "fullcreen":Z
    :goto_0
    if-eqz v1, :cond_0

    iget-object v4, p0, Landroid/app/Activity$TintBarInject;->mWindow:Landroid/view/Window;

    invoke-virtual {v4}, Landroid/view/Window;->isFloating()Z

    move-result v4

    if-eqz v4, :cond_2

    :cond_0
    return-void

    .end local v1    # "fullcreen":Z
    :cond_1
    const/4 v1, 0x0

    .restart local v1    # "fullcreen":Z
    goto :goto_0

    .end local v1    # "fullcreen":Z
    :cond_2
    iget-object v4, p0, Landroid/app/Activity$TintBarInject;->mThisActivity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v7, "mz_status_bar_tint"

    invoke-static {v4, v7, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_6

    const/4 v3, 0x1

    .local v3, "statusBarTintEnabled":Z
    :goto_1
    invoke-direct {p0, p2}, Landroid/app/Activity$TintBarInject;->isShowStatusBarColor(Landroid/view/WindowManager$LayoutParams;)Z

    move-result v2

    .local v2, "showStatusBarColor":Z
    iget v4, p2, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/2addr v4, v8

    if-eqz v4, :cond_7

    move v4, v5

    :goto_2
    iput-boolean v4, p0, Landroid/app/Activity$TintBarInject;->mTranslucentStatus:Z

    iget-boolean v4, p0, Landroid/app/Activity$TintBarInject;->mIsFlymeStatusBar:Z

    if-nez v4, :cond_3

    invoke-static {p2}, Landroid/app/Activity$TintBarInject;->isAppDrawsSystemBarBackgrounds(Landroid/view/WindowManager$LayoutParams;)Z

    move-result v4

    iput-boolean v4, p0, Landroid/app/Activity$TintBarInject;->mIsAppDrawStatusBar:Z

    iget-boolean v4, p0, Landroid/app/Activity$TintBarInject;->mIsAppDrawStatusBar:Z

    if-eqz v4, :cond_3

    iget v4, p0, Landroid/app/Activity$TintBarInject;->mAppSetStatusBarColor:I

    if-nez v4, :cond_3

    iget-object v4, p0, Landroid/app/Activity$TintBarInject;->mWindow:Landroid/view/Window;

    invoke-virtual {v4}, Landroid/view/Window;->getStatusBarColor()I

    move-result v4

    iput v4, p0, Landroid/app/Activity$TintBarInject;->mAppSetStatusBarColor:I

    :cond_3
    iget-boolean v4, p0, Landroid/app/Activity$TintBarInject;->mStatusBarTintEnabled:Z

    if-ne v4, v3, :cond_4

    iget-boolean v4, p0, Landroid/app/Activity$TintBarInject;->mShowStatusBarColor:Z

    if-eq v2, v4, :cond_12

    :cond_4
    iget-boolean v4, p0, Landroid/app/Activity$TintBarInject;->mTranslucentStatus:Z

    if-eqz v4, :cond_a

    iput-boolean v2, p0, Landroid/app/Activity$TintBarInject;->mShowStatusBarColor:Z

    iget-boolean v4, p0, Landroid/app/Activity$TintBarInject;->mStatusBarTintEnabled:Z

    if-eq v4, v3, :cond_5

    iput-boolean v3, p0, Landroid/app/Activity$TintBarInject;->mStatusBarTintEnabled:Z

    iget-boolean v4, p0, Landroid/app/Activity$TintBarInject;->mStatusBarTintEnabled:Z

    if-eqz v4, :cond_9

    iget-object v4, p0, Landroid/app/Activity$TintBarInject;->mWindow:Landroid/view/Window;

    invoke-virtual {v4}, Landroid/view/Window;->isAutoStatusBarIcon()Z

    move-result v4

    if-nez v4, :cond_8

    iget-boolean v4, p0, Landroid/app/Activity$TintBarInject;->mIsInternalApp:Z

    if-eqz v4, :cond_8

    :cond_5
    :goto_3
    return-void

    .end local v2    # "showStatusBarColor":Z
    .end local v3    # "statusBarTintEnabled":Z
    :cond_6
    const/4 v3, 0x0

    .restart local v3    # "statusBarTintEnabled":Z
    goto :goto_1

    .restart local v2    # "showStatusBarColor":Z
    :cond_7
    move v4, v6

    goto :goto_2

    :cond_8
    invoke-direct {p0}, Landroid/app/Activity$TintBarInject;->postDrawDecorViewInner()V

    goto :goto_3

    :cond_9
    iget-boolean v4, p0, Landroid/app/Activity$TintBarInject;->mIsAppDrawStatusBar:Z

    if-eqz v4, :cond_5

    iget-boolean v4, p0, Landroid/app/Activity$TintBarInject;->mIsInternalApp:Z

    if-nez v4, :cond_5

    iput-boolean v5, p0, Landroid/app/Activity$TintBarInject;->mStatusBarColorLock:Z

    iget-object v4, p0, Landroid/app/Activity$TintBarInject;->mWindow:Landroid/view/Window;

    iget v5, p0, Landroid/app/Activity$TintBarInject;->mAppSetStatusBarColor:I

    invoke-virtual {v4, v5}, Landroid/view/Window;->setStatusBarColor(I)V

    iget v4, p0, Landroid/app/Activity$TintBarInject;->mAppSetStatusBarColor:I

    invoke-static {v4}, Landroid/app/Activity$TintBarInject;->isDarkColor(I)Z

    move-result v4

    invoke-direct {p0, v4}, Landroid/app/Activity$TintBarInject;->setStatusBarDarkIcon(Z)V

    iput-boolean v6, p0, Landroid/app/Activity$TintBarInject;->mStatusBarColorLock:Z

    goto :goto_3

    :cond_a
    iget-boolean v4, p0, Landroid/app/Activity$TintBarInject;->mShowStatusBarColor:Z

    if-eq v4, v2, :cond_b

    iput-boolean v2, p0, Landroid/app/Activity$TintBarInject;->mShowStatusBarColor:Z

    iput-boolean v3, p0, Landroid/app/Activity$TintBarInject;->mStatusBarTintEnabled:Z

    if-eqz v3, :cond_b

    iget-boolean v4, p0, Landroid/app/Activity$TintBarInject;->mKeepAppStatusBar:Z

    if-eqz v4, :cond_c

    :cond_b
    iget-boolean v4, p0, Landroid/app/Activity$TintBarInject;->mStatusBarTintEnabled:Z

    if-eq v4, v3, :cond_5

    iput-boolean v3, p0, Landroid/app/Activity$TintBarInject;->mStatusBarTintEnabled:Z

    iget-boolean v4, p0, Landroid/app/Activity$TintBarInject;->mStatusBarTintEnabled:Z

    if-eqz v4, :cond_d

    iget-boolean v4, p0, Landroid/app/Activity$TintBarInject;->mShowStatusBarColor:Z

    if-eqz v4, :cond_5

    invoke-direct {p0, v5, p2, p3}, Landroid/app/Activity$TintBarInject;->setDrawsSystemBarBackgrounds(ZLandroid/view/WindowManager$LayoutParams;Z)V

    invoke-direct {p0}, Landroid/app/Activity$TintBarInject;->postDrawDecorViewInner()V

    goto :goto_3

    :cond_c
    iget-boolean v4, p0, Landroid/app/Activity$TintBarInject;->mShowStatusBarColor:Z

    if-eqz v4, :cond_b

    invoke-direct {p0, v5, p2, p3}, Landroid/app/Activity$TintBarInject;->setDrawsSystemBarBackgrounds(ZLandroid/view/WindowManager$LayoutParams;Z)V

    invoke-direct {p0}, Landroid/app/Activity$TintBarInject;->postDrawDecorViewInner()V

    return-void

    :cond_d
    iget-boolean v4, p0, Landroid/app/Activity$TintBarInject;->mIsFlymeStatusBar:Z

    if-eqz v4, :cond_11

    iget v4, p0, Landroid/app/Activity$TintBarInject;->mStatusBarColor:I

    iget v7, p0, Landroid/app/Activity$TintBarInject;->mAppSetStatusBarColor:I

    invoke-static {v4, v7}, Landroid/app/Activity$TintBarInject;->isSimilarColor(II)Z

    move-result v4

    if-nez v4, :cond_10

    iget v4, p2, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/2addr v4, v8

    if-eqz v4, :cond_f

    :goto_4
    iput-boolean v5, p0, Landroid/app/Activity$TintBarInject;->mTranslucentStatus:Z

    iget-boolean v4, p0, Landroid/app/Activity$TintBarInject;->mTranslucentStatus:Z

    if-nez v4, :cond_e

    invoke-direct {p0, v6, p2, p3}, Landroid/app/Activity$TintBarInject;->setDrawsSystemBarBackgrounds(ZLandroid/view/WindowManager$LayoutParams;Z)V

    invoke-direct {p0, v6}, Landroid/app/Activity$TintBarInject;->setStatusBarDarkIcon(Z)V

    :cond_e
    :goto_5
    iget-boolean v4, p0, Landroid/app/Activity$TintBarInject;->mIsFloating:Z

    if-eqz v4, :cond_5

    iget-object v4, p0, Landroid/app/Activity$TintBarInject;->mWindow:Landroid/view/Window;

    invoke-virtual {v4}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .local v0, "dec":Landroid/view/View;
    iget-object v4, p0, Landroid/app/Activity$TintBarInject;->mWindow:Landroid/view/Window;

    invoke-virtual {v4}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    move-result v5

    iget v6, p0, Landroid/app/Activity$TintBarInject;->mDecorViewPaddingTop:I

    invoke-virtual {v0}, Landroid/view/View;->getPaddingRight()I

    move-result v7

    invoke-virtual {v0}, Landroid/view/View;->getPaddingBottom()I

    move-result v8

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/view/View;->setPadding(IIII)V

    goto/16 :goto_3

    .end local v0    # "dec":Landroid/view/View;
    :cond_f
    move v5, v6

    goto :goto_4

    :cond_10
    iput-boolean v5, p0, Landroid/app/Activity$TintBarInject;->mStatusBarColorLock:Z

    iget-object v4, p0, Landroid/app/Activity$TintBarInject;->mWindow:Landroid/view/Window;

    iget v5, p0, Landroid/app/Activity$TintBarInject;->mAppSetStatusBarColor:I

    invoke-virtual {v4, v5}, Landroid/view/Window;->setStatusBarColor(I)V

    iput-boolean v6, p0, Landroid/app/Activity$TintBarInject;->mStatusBarColorLock:Z

    goto :goto_5

    :cond_11
    iget-boolean v4, p0, Landroid/app/Activity$TintBarInject;->mIsAppDrawStatusBar:Z

    if-eqz v4, :cond_5

    iget-boolean v4, p0, Landroid/app/Activity$TintBarInject;->mIsInternalApp:Z

    if-nez v4, :cond_5

    iput-boolean v5, p0, Landroid/app/Activity$TintBarInject;->mStatusBarColorLock:Z

    iget-object v4, p0, Landroid/app/Activity$TintBarInject;->mWindow:Landroid/view/Window;

    iget v5, p0, Landroid/app/Activity$TintBarInject;->mAppSetStatusBarColor:I

    invoke-virtual {v4, v5}, Landroid/view/Window;->setStatusBarColor(I)V

    iput-boolean v6, p0, Landroid/app/Activity$TintBarInject;->mStatusBarColorLock:Z

    iget v4, p0, Landroid/app/Activity$TintBarInject;->mAppSetStatusBarColor:I

    invoke-static {v4}, Landroid/app/Activity$TintBarInject;->isDarkColor(I)Z

    move-result v4

    invoke-direct {p0, v4}, Landroid/app/Activity$TintBarInject;->setStatusBarDarkIcon(Z)V

    goto/16 :goto_3

    :cond_12
    iget-boolean v4, p0, Landroid/app/Activity$TintBarInject;->mIsInternalApp:Z

    if-eqz v4, :cond_13

    iget-object v4, p0, Landroid/app/Activity$TintBarInject;->mWindow:Landroid/view/Window;

    invoke-virtual {v4}, Landroid/view/Window;->isAutoStatusBarIcon()Z

    move-result v4

    if-eqz v4, :cond_5

    if-eqz p1, :cond_5

    invoke-direct {p0}, Landroid/app/Activity$TintBarInject;->postDrawDecorViewInner()V

    goto/16 :goto_3

    :cond_13
    if-eqz p1, :cond_5

    iget-boolean v4, p0, Landroid/app/Activity$TintBarInject;->mStatusBarTintEnabled:Z

    if-eqz v4, :cond_5

    iget-boolean v4, p0, Landroid/app/Activity$TintBarInject;->mIsAppDrawStatusBar:Z

    if-nez v4, :cond_14

    iget-boolean v4, p0, Landroid/app/Activity$TintBarInject;->mIsFlymeStatusBar:Z

    if-eqz v4, :cond_5

    :cond_14
    invoke-direct {p0}, Landroid/app/Activity$TintBarInject;->postDrawDecorViewInner()V

    goto/16 :goto_3
.end method

.method public drawStatusBarBackground(Landroid/graphics/Canvas;)V
    .locals 2
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    iget-boolean v0, p0, Landroid/app/Activity$TintBarInject;->mStatusBarColorLock:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/app/Activity$TintBarInject;->mWindow:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/Activity$TintBarInject;->mDecoViewDrawFirst:Z

    iget-boolean v0, p0, Landroid/app/Activity$TintBarInject;->mDecoViewDrawFlag:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/app/Activity$TintBarInject;->mWindow:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroid/app/Activity$TintBarInject;->onDrawDecorViewInner(Landroid/view/View;Z)V

    iget-object v0, p0, Landroid/app/Activity$TintBarInject;->mWindow:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->postInvalidate()V

    :cond_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .param p1, "configuration"    # Landroid/content/res/Configuration;

    .prologue
    const/4 v1, 0x1

    iget-boolean v0, p0, Landroid/app/Activity$TintBarInject;->mIsActivityFirstStart:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/app/Activity$TintBarInject;->mWindow:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    invoke-virtual {p0, v1, v0, v1}, Landroid/app/Activity$TintBarInject;->apply(ZLandroid/view/WindowManager$LayoutParams;Z)V

    :cond_0
    return-void
.end method

.method onCreate()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    iget-object v2, p0, Landroid/app/Activity$TintBarInject;->mThisActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    iput-object v2, p0, Landroid/app/Activity$TintBarInject;->mWindow:Landroid/view/Window;

    iget-object v2, p0, Landroid/app/Activity$TintBarInject;->mThisActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    iput v2, p0, Landroid/app/Activity$TintBarInject;->mDensity:F

    invoke-direct {p0}, Landroid/app/Activity$TintBarInject;->updateStatusBarHeight()V

    iget-object v2, p0, Landroid/app/Activity$TintBarInject;->mThisActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Application;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .local v0, "appInfo":Landroid/content/pm/ApplicationInfo;
    if-eqz v0, :cond_0

    iget v2, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    iput-boolean v1, p0, Landroid/app/Activity$TintBarInject;->mIsInternalApp:Z

    return-void
.end method

.method onStart()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    iget-boolean v0, p0, Landroid/app/Activity$TintBarInject;->mIsActivityFirstStart:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/app/Activity$TintBarInject;->mThisActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    iput-object v0, p0, Landroid/app/Activity$TintBarInject;->mWindow:Landroid/view/Window;

    iget-object v0, p0, Landroid/app/Activity$TintBarInject;->mWindow:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->isFloating()Z

    move-result v0

    iput-boolean v0, p0, Landroid/app/Activity$TintBarInject;->mIsFloating:Z

    iget-object v0, p0, Landroid/app/Activity$TintBarInject;->mWindow:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    move-result v0

    iput v0, p0, Landroid/app/Activity$TintBarInject;->mDecorViewPaddingTop:I

    invoke-direct {p0}, Landroid/app/Activity$TintBarInject;->isAppDrawsSystemBarBackgrounds()Z

    move-result v0

    iput-boolean v0, p0, Landroid/app/Activity$TintBarInject;->mIsAppDrawStatusBar:Z

    :cond_0
    iget-object v0, p0, Landroid/app/Activity$TintBarInject;->mWindow:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    invoke-virtual {p0, v1, v0, v1}, Landroid/app/Activity$TintBarInject;->apply(ZLandroid/view/WindowManager$LayoutParams;Z)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/app/Activity$TintBarInject;->mIsActivityFirstStart:Z

    return-void
.end method

.method public onStatusBarColorChange(I)I
    .locals 1
    .param p1, "color"    # I

    .prologue
    iget-boolean v0, p0, Landroid/app/Activity$TintBarInject;->mStatusBarColorLock:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/app/Activity$TintBarInject;->mWindow:Landroid/view/Window;

    if-eqz v0, :cond_1

    iput p1, p0, Landroid/app/Activity$TintBarInject;->mAppSetStatusBarColor:I

    iget v0, p0, Landroid/app/Activity$TintBarInject;->mStatusBarColor:I

    invoke-direct {p0, v0}, Landroid/app/Activity$TintBarInject;->isVerifyColor(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/app/Activity$TintBarInject;->mStatusBarTintEnabled:Z

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/app/Activity$TintBarInject;->mStatusBarColor:I

    invoke-static {v0, p1}, Landroid/app/Activity$TintBarInject;->isSimilarColor(II)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/app/Activity$TintBarInject;->mStatusBarColor:I

    invoke-static {v0}, Landroid/app/Activity$TintBarInject;->isDarkColor(I)Z

    move-result v0

    invoke-direct {p0, v0}, Landroid/app/Activity$TintBarInject;->setStatusBarDarkIcon(Z)V

    iget v0, p0, Landroid/app/Activity$TintBarInject;->mStatusBarColor:I

    return v0

    :cond_0
    invoke-static {p1}, Landroid/app/Activity$TintBarInject;->isDarkColor(I)Z

    move-result v0

    invoke-direct {p0, v0}, Landroid/app/Activity$TintBarInject;->setStatusBarDarkIcon(Z)V

    :cond_1
    return p1
.end method

.method public onWindowAttributesChanged(Landroid/view/WindowManager$LayoutParams;)Landroid/view/WindowManager$LayoutParams;
    .locals 8
    .param p1, "params"    # Landroid/view/WindowManager$LayoutParams;

    .prologue
    const/high16 v6, -0x80000000

    const/4 v3, 0x0

    iget-boolean v4, p0, Landroid/app/Activity$TintBarInject;->mStatusBarColorLock:Z

    if-nez v4, :cond_0

    iget-boolean v4, p0, Landroid/app/Activity$TintBarInject;->mIsActivityFirstStart:Z

    if-eqz v4, :cond_1

    :cond_0
    :goto_0
    return-object p1

    :cond_1
    invoke-virtual {p0, v3, p1, v3}, Landroid/app/Activity$TintBarInject;->apply(ZLandroid/view/WindowManager$LayoutParams;Z)V

    iget-object v4, p0, Landroid/app/Activity$TintBarInject;->mWindow:Landroid/view/Window;

    invoke-virtual {v4}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v4

    iget v4, v4, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v5, 0x4000000

    and-int/2addr v4, v5

    if-eqz v4, :cond_2

    const/4 v3, 0x1

    :cond_2
    iput-boolean v3, p0, Landroid/app/Activity$TintBarInject;->mTranslucentStatus:Z

    iget-boolean v3, p0, Landroid/app/Activity$TintBarInject;->mTranslucentStatus:Z

    if-nez v3, :cond_3

    iget-boolean v3, p0, Landroid/app/Activity$TintBarInject;->mIsFlymeStatusBar:Z

    if-eqz v3, :cond_3

    invoke-direct {p0}, Landroid/app/Activity$TintBarInject;->isAppDrawsSystemBarBackgrounds()Z

    move-result v3

    if-eqz v3, :cond_4

    :cond_3
    :goto_1
    iget v3, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/2addr v3, v6

    if-eqz v3, :cond_0

    iget-boolean v3, p0, Landroid/app/Activity$TintBarInject;->mTranslucentStatus:Z

    if-nez v3, :cond_0

    iget v3, p1, Landroid/view/WindowManager$LayoutParams;->systemUiVisibility:I

    and-int/lit16 v3, v3, 0x2000

    if-lez v3, :cond_5

    const/4 v2, 0x1

    .local v2, "isVisibilityDark":Z
    :goto_2
    iget v3, p0, Landroid/app/Activity$TintBarInject;->mStatusBarColor:I

    invoke-static {v3}, Landroid/app/Activity$TintBarInject;->isDarkColor(I)Z

    move-result v1

    .local v1, "isColorDark":Z
    if-eq v2, v1, :cond_0

    iget-object v3, p0, Landroid/app/Activity$TintBarInject;->mWindow:Landroid/view/Window;

    invoke-virtual {v3}, Landroid/view/Window;->getStatusBarColor()I

    move-result v3

    iget v4, p0, Landroid/app/Activity$TintBarInject;->mStatusBarColor:I

    if-ne v3, v4, :cond_0

    if-eqz v1, :cond_6

    iget v3, p1, Landroid/view/WindowManager$LayoutParams;->systemUiVisibility:I

    or-int/lit16 v3, v3, 0x2000

    iput v3, p1, Landroid/view/WindowManager$LayoutParams;->systemUiVisibility:I

    :goto_3
    iget-object v3, p0, Landroid/app/Activity$TintBarInject;->mWindow:Landroid/view/Window;

    invoke-virtual {v3}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v3

    new-instance v4, Landroid/app/Activity$TintBarInject$1;

    invoke-direct {v4, p0}, Landroid/app/Activity$TintBarInject$1;-><init>(Landroid/app/Activity$TintBarInject;)V

    const-wide/16 v6, 0xa

    invoke-virtual {v3, v4, v6, v7}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .end local v1    # "isColorDark":Z
    .end local v2    # "isVisibilityDark":Z
    :cond_4
    const/high16 v0, -0x80000000

    .local v0, "bits":I
    iget v3, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/2addr v3, v6

    iput v3, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    goto :goto_1

    .end local v0    # "bits":I
    :cond_5
    const/4 v2, 0x0

    .restart local v2    # "isVisibilityDark":Z
    goto :goto_2

    .restart local v1    # "isColorDark":Z
    :cond_6
    iget v3, p1, Landroid/view/WindowManager$LayoutParams;->systemUiVisibility:I

    and-int/lit16 v3, v3, -0x2001

    iput v3, p1, Landroid/view/WindowManager$LayoutParams;->systemUiVisibility:I

    goto :goto_3
.end method
