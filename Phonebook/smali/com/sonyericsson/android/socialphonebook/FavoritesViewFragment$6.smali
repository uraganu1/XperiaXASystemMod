.class Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment$6;
.super Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment$EmptyAnimationListener;
.source "FavoritesViewFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment;->startDropAnimation(Landroid/graphics/Rect;Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment;

.field final synthetic val$v:Lcom/sonyericsson/android/socialphonebook/ui/widget/DragFavoritesBitmapView;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment;Lcom/sonyericsson/android/socialphonebook/ui/widget/DragFavoritesBitmapView;)V
    .locals 1
    .param p1, "this$0"    # Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment;
    .param p2, "val$v"    # Lcom/sonyericsson/android/socialphonebook/ui/widget/DragFavoritesBitmapView;

    .prologue
    .line 948
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment$6;->this$0:Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment;

    iput-object p2, p0, Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment$6;->val$v:Lcom/sonyericsson/android/socialphonebook/ui/widget/DragFavoritesBitmapView;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment$EmptyAnimationListener;-><init>(Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment$EmptyAnimationListener;)V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 951
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment$6;->val$v:Lcom/sonyericsson/android/socialphonebook/ui/widget/DragFavoritesBitmapView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/socialphonebook/ui/widget/DragFavoritesBitmapView;->setVisibility(I)V

    .line 950
    return-void
.end method
