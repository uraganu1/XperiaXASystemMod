.class public Lcom/sonyericsson/conversations/ui/controller/ActionBarController;
.super Ljava/lang/Object;
.source "ActionBarController.java"


# static fields
.field private static final ACTIONBAR_STYLE:[I

.field private static final BACKGROUND:[I

.field private static sActionBarReference:Ljava/lang/ref/SoftReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/SoftReference",
            "<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected mActionBar:Landroid/app/ActionBar;

.field protected mActivity:Landroid/app/Activity;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 20
    new-array v0, v3, [I

    const v1, 0x10102ce

    aput v1, v0, v2

    sput-object v0, Lcom/sonyericsson/conversations/ui/controller/ActionBarController;->ACTIONBAR_STYLE:[I

    .line 21
    new-array v0, v3, [I

    const v1, 0x10100d4

    aput v1, v0, v2

    sput-object v0, Lcom/sonyericsson/conversations/ui/controller/ActionBarController;->BACKGROUND:[I

    .line 22
    new-instance v0, Ljava/lang/ref/SoftReference;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/sonyericsson/conversations/ui/controller/ActionBarController;->sActionBarReference:Ljava/lang/ref/SoftReference;

    .line 18
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    if-eqz p1, :cond_0

    .line 28
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/controller/ActionBarController;->mActivity:Landroid/app/Activity;

    .line 29
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ActionBarController;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ActionBarController;->mActionBar:Landroid/app/ActionBar;

    .line 26
    return-void

    .line 31
    :cond_0
    const-string/jumbo v0, "ActionBarController created with null activity"

    invoke-static {v0}, Lcom/sonymobile/conversations/util/LogUtil;->e(Ljava/lang/String;)V

    .line 32
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "ActionBarController created with null activity"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static getActionBarBackground(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x0

    .line 101
    if-nez p0, :cond_0

    .line 102
    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-direct {v3}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v3

    .line 104
    :cond_0
    const/4 v0, 0x0

    .line 105
    .local v0, "background":Landroid/graphics/drawable/Drawable;
    sget-object v3, Lcom/sonyericsson/conversations/ui/controller/ActionBarController;->ACTIONBAR_STYLE:[I

    invoke-virtual {p0, v3}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 106
    .local v2, "ta":Landroid/content/res/TypedArray;
    invoke-virtual {v2, v4, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    .line 107
    .local v1, "styleRes":I
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 108
    if-eqz v1, :cond_1

    .line 109
    sget-object v3, Lcom/sonyericsson/conversations/ui/controller/ActionBarController;->BACKGROUND:[I

    invoke-virtual {p0, v1, v3}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 110
    invoke-virtual {v2, v4}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 111
    .local v0, "background":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 113
    .end local v0    # "background":Landroid/graphics/drawable/Drawable;
    :cond_1
    return-object v0
.end method

.method public static getThemedActionBarBackground(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 65
    sget-object v0, Lcom/sonyericsson/conversations/ui/controller/ActionBarController;->sActionBarReference:Ljava/lang/ref/SoftReference;

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 66
    new-instance v0, Ljava/lang/ref/SoftReference;

    invoke-static {p0}, Lcom/sonyericsson/conversations/ui/controller/ActionBarController;->getActionBarBackground(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/sonyericsson/conversations/ui/controller/ActionBarController;->sActionBarReference:Ljava/lang/ref/SoftReference;

    .line 68
    :cond_0
    sget-object v0, Lcom/sonyericsson/conversations/ui/controller/ActionBarController;->sActionBarReference:Ljava/lang/ref/SoftReference;

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public static resetActionBarBackground()V
    .locals 1

    .prologue
    .line 86
    sget-object v0, Lcom/sonyericsson/conversations/ui/controller/ActionBarController;->sActionBarReference:Ljava/lang/ref/SoftReference;

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->clear()V

    .line 85
    return-void
.end method


# virtual methods
.method public updateActionBar()V
    .locals 2

    .prologue
    .line 40
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ActionBarController;->mActionBar:Landroid/app/ActionBar;

    if-eqz v0, :cond_0

    .line 41
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ActionBarController;->mActionBar:Landroid/app/ActionBar;

    .line 42
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/controller/ActionBarController;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/sonyericsson/conversations/ui/controller/ActionBarController;->getThemedActionBarBackground(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 41
    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 39
    :cond_0
    return-void
.end method
