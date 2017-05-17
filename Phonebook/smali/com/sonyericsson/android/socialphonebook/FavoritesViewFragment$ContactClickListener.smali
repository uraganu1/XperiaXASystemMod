.class Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment$ContactClickListener;
.super Ljava/lang/Object;
.source "FavoritesViewFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ContactClickListener"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 982
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment$ContactClickListener;)V
    .locals 0

    .prologue
    invoke-direct {p0}, Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment$ContactClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 986
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const v1, 0x7f0e002a

    invoke-virtual {p2, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment$ViewHolder;

    .line 987
    .local v0, "holder":Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment$ViewHolder;
    if-eqz v0, :cond_0

    .line 988
    iget-object v1, v0, Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment$ViewHolder;->quickContactBadge:Landroid/widget/QuickContactBadge;

    invoke-virtual {v1}, Landroid/widget/QuickContactBadge;->performClick()Z

    .line 985
    :cond_0
    return-void
.end method
