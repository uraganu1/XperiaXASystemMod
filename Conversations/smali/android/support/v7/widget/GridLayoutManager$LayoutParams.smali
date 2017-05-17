.class public Landroid/support/v7/widget/GridLayoutManager$LayoutParams;
.super Landroid/support/v7/widget/RecyclerView$LayoutParams;
.source "GridLayoutManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/GridLayoutManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LayoutParams"
.end annotation


# instance fields
.field private mSpanIndex:I

.field private mSpanSize:I


# direct methods
.method public constructor <init>(II)V
    .locals 1
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 859
    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/RecyclerView$LayoutParams;-><init>(II)V

    const/4 v0, -0x1

    .line 850
    iput v0, p0, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;->mSpanIndex:I

    const/4 v0, 0x0

    .line 852
    iput v0, p0, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;->mSpanSize:I

    .line 860
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "c"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 855
    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/RecyclerView$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, -0x1

    .line 850
    iput v0, p0, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;->mSpanIndex:I

    const/4 v0, 0x0

    .line 852
    iput v0, p0, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;->mSpanSize:I

    .line 856
    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1
    .param p1, "source"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 867
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v0, -0x1

    .line 850
    iput v0, p0, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;->mSpanIndex:I

    const/4 v0, 0x0

    .line 852
    iput v0, p0, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;->mSpanSize:I

    .line 868
    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$MarginLayoutParams;)V
    .locals 1
    .param p1, "source"    # Landroid/view/ViewGroup$MarginLayoutParams;

    .prologue
    .line 863
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    const/4 v0, -0x1

    .line 850
    iput v0, p0, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;->mSpanIndex:I

    const/4 v0, 0x0

    .line 852
    iput v0, p0, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;->mSpanSize:I

    .line 864
    return-void
.end method

.method static synthetic access$000(Landroid/support/v7/widget/GridLayoutManager$LayoutParams;)I
    .locals 1
    .param p0, "x0"    # Landroid/support/v7/widget/GridLayoutManager$LayoutParams;

    .prologue
    .line 843
    iget v0, p0, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;->mSpanIndex:I

    return v0
.end method

.method static synthetic access$002(Landroid/support/v7/widget/GridLayoutManager$LayoutParams;I)I
    .locals 0
    .param p0, "x0"    # Landroid/support/v7/widget/GridLayoutManager$LayoutParams;
    .param p1, "x1"    # I

    .prologue
    .line 843
    iput p1, p0, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;->mSpanIndex:I

    return p1
.end method

.method static synthetic access$100(Landroid/support/v7/widget/GridLayoutManager$LayoutParams;)I
    .locals 1
    .param p0, "x0"    # Landroid/support/v7/widget/GridLayoutManager$LayoutParams;

    .prologue
    .line 843
    iget v0, p0, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;->mSpanSize:I

    return v0
.end method

.method static synthetic access$102(Landroid/support/v7/widget/GridLayoutManager$LayoutParams;I)I
    .locals 0
    .param p0, "x0"    # Landroid/support/v7/widget/GridLayoutManager$LayoutParams;
    .param p1, "x1"    # I

    .prologue
    .line 843
    iput p1, p0, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;->mSpanSize:I

    return p1
.end method


# virtual methods
.method public getSpanIndex()I
    .locals 1

    .prologue
    .line 888
    iget v0, p0, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;->mSpanIndex:I

    return v0
.end method

.method public getSpanSize()I
    .locals 1

    .prologue
    .line 898
    iget v0, p0, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;->mSpanSize:I

    return v0
.end method
