.class Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment$ContactActionListener;
.super Ljava/lang/Object;
.source "FavoritesViewFragment.java"

# interfaces
.implements Lcom/sonyericsson/movablepanes/paneview/PaneView$OnItemActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ContactActionListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment;

    .prologue
    .line 1018
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment$ContactActionListener;->this$0:Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment;Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment$ContactActionListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment;

    .prologue
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment$ContactActionListener;-><init>(Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment;)V

    return-void
.end method


# virtual methods
.method public onDeleteItem(Landroid/view/View;I)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "position"    # I

    .prologue
    .line 1022
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment$ContactActionListener;->this$0:Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment;

    invoke-static {v1}, Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment;->-get4(Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment;)Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment$FavoritesPaneAdapter;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment$FavoritesPaneAdapter;->getItem(I)Lcom/sonyericsson/movablepanes/data/ContactInfo;

    move-result-object v0

    .line 1023
    .local v0, "contactInfo":Lcom/sonyericsson/movablepanes/data/ContactInfo;
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment$ContactActionListener;->this$0:Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment;

    invoke-virtual {v0}, Lcom/sonyericsson/movablepanes/data/ContactInfo;->getUri()Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment;->-wrap3(Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment;Landroid/net/Uri;Z)V

    .line 1024
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment$ContactActionListener;->this$0:Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment;

    invoke-static {v1}, Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment;->-get8(Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment;)Lcom/sonyericsson/movablepanes/paneview/PaneView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/movablepanes/paneview/PaneView;->requestFocus()Z

    .line 1021
    return-void
.end method
