.class Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment$ViewHolder;
.super Ljava/lang/Object;
.source "FavoritesViewFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ViewHolder"
.end annotation


# instance fields
.field public gradientLayout:Landroid/widget/RelativeLayout;

.field public final nameView:Landroid/widget/TextView;

.field public final photoView:Landroid/widget/ImageView;

.field public final quickContactBadge:Landroid/widget/QuickContactBadge;

.field public final rcsIconView:Landroid/widget/ImageView;

.field public final view:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 415
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 416
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment$ViewHolder;->view:Landroid/view/View;

    .line 417
    const v0, 0x7f0e015a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment$ViewHolder;->photoView:Landroid/widget/ImageView;

    .line 418
    const v0, 0x7f0e015c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment$ViewHolder;->rcsIconView:Landroid/widget/ImageView;

    .line 419
    const v0, 0x7f0e00c6

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/QuickContactBadge;

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment$ViewHolder;->quickContactBadge:Landroid/widget/QuickContactBadge;

    .line 420
    const v0, 0x7f0e00bc

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment$ViewHolder;->nameView:Landroid/widget/TextView;

    .line 421
    const v0, 0x7f0e0159

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment$ViewHolder;->gradientLayout:Landroid/widget/RelativeLayout;

    .line 422
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment$ViewHolder;->quickContactBadge:Landroid/widget/QuickContactBadge;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/QuickContactBadge;->setOverlay(Landroid/graphics/drawable/Drawable;)V

    .line 415
    return-void
.end method
