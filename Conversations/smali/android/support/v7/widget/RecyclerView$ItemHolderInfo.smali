.class Landroid/support/v7/widget/RecyclerView$ItemHolderInfo;
.super Ljava/lang/Object;
.source "RecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/RecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ItemHolderInfo"
.end annotation


# instance fields
.field bottom:I

.field holder:Landroid/support/v7/widget/RecyclerView$ViewHolder;

.field left:I

.field right:I

.field top:I


# direct methods
.method constructor <init>(Landroid/support/v7/widget/RecyclerView$ViewHolder;IIII)V
    .locals 0
    .param p1, "holder"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 9773
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9774
    iput-object p1, p0, Landroid/support/v7/widget/RecyclerView$ItemHolderInfo;->holder:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    .line 9775
    iput p2, p0, Landroid/support/v7/widget/RecyclerView$ItemHolderInfo;->left:I

    .line 9776
    iput p3, p0, Landroid/support/v7/widget/RecyclerView$ItemHolderInfo;->top:I

    .line 9777
    iput p4, p0, Landroid/support/v7/widget/RecyclerView$ItemHolderInfo;->right:I

    .line 9778
    iput p5, p0, Landroid/support/v7/widget/RecyclerView$ItemHolderInfo;->bottom:I

    .line 9779
    return-void
.end method
