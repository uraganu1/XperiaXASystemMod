.class Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment$3;
.super Ljava/lang/Object;
.source "FavoritesViewFragment.java"

# interfaces
.implements Lcom/sonyericsson/android/socialphonebook/TabStateObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment;

    .prologue
    .line 159
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment$3;->this$0:Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTabChanged(Lcom/sonyericsson/android/socialphonebook/activities/ActionBarAdapter$TabState;Z)V
    .locals 3
    .param p1, "tab"    # Lcom/sonyericsson/android/socialphonebook/activities/ActionBarAdapter$TabState;
    .param p2, "selected"    # Z

    .prologue
    .line 163
    sget-object v0, Lcom/sonyericsson/android/socialphonebook/activities/ActionBarAdapter$TabState;->FAVORITES:Lcom/sonyericsson/android/socialphonebook/activities/ActionBarAdapter$TabState;

    if-ne p1, v0, :cond_0

    if-eqz p2, :cond_0

    .line 164
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment$3;->this$0:Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment;

    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment;->-get1(Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment;)Lcom/sonyericsson/android/socialphonebook/rcs/ContactDataHelper;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/android/socialphonebook/rcs/ContactDataHelper$QueryType;->RCS_FAVORITE_CONTACTS:Lcom/sonyericsson/android/socialphonebook/rcs/ContactDataHelper$QueryType;

    .line 165
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment$3;->this$0:Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment;

    invoke-static {v2}, Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment;->-get7(Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment;)Lcom/sonyericsson/android/socialphonebook/rcs/ContactDataHelper$OnQueryCompleteListener;

    move-result-object v2

    .line 164
    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/android/socialphonebook/rcs/ContactDataHelper;->queryAsync(Lcom/sonyericsson/android/socialphonebook/rcs/ContactDataHelper$QueryType;Lcom/sonyericsson/android/socialphonebook/rcs/ContactDataHelper$OnQueryCompleteListener;)V

    .line 162
    :cond_0
    return-void
.end method
