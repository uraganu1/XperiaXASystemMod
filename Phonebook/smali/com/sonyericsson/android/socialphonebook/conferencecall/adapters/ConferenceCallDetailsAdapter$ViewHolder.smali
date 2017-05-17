.class Lcom/sonyericsson/android/socialphonebook/conferencecall/adapters/ConferenceCallDetailsAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "ConferenceCallDetailsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/socialphonebook/conferencecall/adapters/ConferenceCallDetailsAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ViewHolder"
.end annotation


# instance fields
.field public icon:Landroid/widget/QuickContactBadge;

.field public label:Landroid/widget/TextView;

.field public name:Landroid/widget/TextView;

.field public number:Landroid/widget/TextView;

.field public secondRowLayout:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 137
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 138
    const v0, 0x7f0e00a1

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/conferencecall/adapters/ConferenceCallDetailsAdapter$ViewHolder;->secondRowLayout:Landroid/view/View;

    .line 139
    const v0, 0x7f0e00a0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/conferencecall/adapters/ConferenceCallDetailsAdapter$ViewHolder;->name:Landroid/widget/TextView;

    .line 140
    const v0, 0x7f0e0052

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/conferencecall/adapters/ConferenceCallDetailsAdapter$ViewHolder;->label:Landroid/widget/TextView;

    .line 141
    const v0, 0x7f0e0053

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/conferencecall/adapters/ConferenceCallDetailsAdapter$ViewHolder;->number:Landroid/widget/TextView;

    .line 142
    const v0, 0x7f0e004f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/QuickContactBadge;

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/conferencecall/adapters/ConferenceCallDetailsAdapter$ViewHolder;->icon:Landroid/widget/QuickContactBadge;

    .line 143
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/conferencecall/adapters/ConferenceCallDetailsAdapter$ViewHolder;->icon:Landroid/widget/QuickContactBadge;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/QuickContactBadge;->setOverlay(Landroid/graphics/drawable/Drawable;)V

    .line 144
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/conferencecall/adapters/ConferenceCallDetailsAdapter$ViewHolder;->icon:Landroid/widget/QuickContactBadge;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/QuickContactBadge;->setClickable(Z)V

    .line 146
    const v0, 0x7f0e00a2

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 137
    return-void
.end method
