.class public Lcom/android/contacts/common/util/ViewUtil;
.super Ljava/lang/Object;
.source "ViewUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/common/util/ViewUtil$1;,
        Lcom/android/contacts/common/util/ViewUtil$2;
    }
.end annotation


# static fields
.field private static final OVAL_OUTLINE_PROVIDER:Landroid/view/ViewOutlineProvider;

.field private static final RECT_OUTLINE_PROVIDER:Landroid/view/ViewOutlineProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    new-instance v0, Lcom/android/contacts/common/util/ViewUtil$1;

    invoke-direct {v0}, Lcom/android/contacts/common/util/ViewUtil$1;-><init>()V

    sput-object v0, Lcom/android/contacts/common/util/ViewUtil;->OVAL_OUTLINE_PROVIDER:Landroid/view/ViewOutlineProvider;

    .line 44
    new-instance v0, Lcom/android/contacts/common/util/ViewUtil$2;

    invoke-direct {v0}, Lcom/android/contacts/common/util/ViewUtil$2;-><init>()V

    sput-object v0, Lcom/android/contacts/common/util/ViewUtil;->RECT_OUTLINE_PROVIDER:Landroid/view/ViewOutlineProvider;

    .line 34
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addRectangularOutlineProvider(Landroid/view/View;Landroid/content/res/Resources;)V
    .locals 1
    .param p0, "view"    # Landroid/view/View;
    .param p1, "res"    # Landroid/content/res/Resources;

    .prologue
    .line 58
    sget-object v0, Lcom/android/contacts/common/util/ViewUtil;->RECT_OUTLINE_PROVIDER:Landroid/view/ViewOutlineProvider;

    invoke-virtual {p0, v0}, Landroid/view/View;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 57
    return-void
.end method

.method public static getStatusBarHeight(Landroid/app/Activity;)I
    .locals 3
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 67
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 68
    .local v0, "rect":Landroid/graphics/Rect;
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 69
    .local v1, "window":Landroid/view/Window;
    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 70
    iget v2, v0, Landroid/graphics/Rect;->top:I

    return v2
.end method
