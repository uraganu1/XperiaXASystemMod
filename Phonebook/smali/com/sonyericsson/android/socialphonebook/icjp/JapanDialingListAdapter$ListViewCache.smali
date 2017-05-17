.class Lcom/sonyericsson/android/socialphonebook/icjp/JapanDialingListAdapter$ListViewCache;
.super Ljava/lang/Object;
.source "JapanDialingListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/socialphonebook/icjp/JapanDialingListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ListViewCache"
.end annotation


# instance fields
.field public final majorText:Landroid/widget/TextView;

.field public final minorText:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    const v0, 0x1020014

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/icjp/JapanDialingListAdapter$ListViewCache;->majorText:Landroid/widget/TextView;

    .line 51
    const v0, 0x1020015

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/icjp/JapanDialingListAdapter$ListViewCache;->minorText:Landroid/widget/TextView;

    .line 49
    return-void
.end method
