.class Lcom/sonyericsson/android/socialphonebook/conferencecall/adapters/ParticipantsAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "ParticipantsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/socialphonebook/conferencecall/adapters/ParticipantsAdapter;
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

.field public removeIcon:Landroid/widget/ImageView;

.field public secondRowLayout:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 130
    const v0, 0x7f0e00a1

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/conferencecall/adapters/ParticipantsAdapter$ViewHolder;->secondRowLayout:Landroid/view/View;

    .line 131
    const v0, 0x7f0e00a0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/conferencecall/adapters/ParticipantsAdapter$ViewHolder;->name:Landroid/widget/TextView;

    .line 132
    const v0, 0x7f0e0052

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/conferencecall/adapters/ParticipantsAdapter$ViewHolder;->label:Landroid/widget/TextView;

    .line 133
    const v0, 0x7f0e0053

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/conferencecall/adapters/ParticipantsAdapter$ViewHolder;->number:Landroid/widget/TextView;

    .line 134
    const v0, 0x7f0e004f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/QuickContactBadge;

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/conferencecall/adapters/ParticipantsAdapter$ViewHolder;->icon:Landroid/widget/QuickContactBadge;

    .line 135
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/conferencecall/adapters/ParticipantsAdapter$ViewHolder;->icon:Landroid/widget/QuickContactBadge;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/QuickContactBadge;->setOverlay(Landroid/graphics/drawable/Drawable;)V

    .line 136
    const v0, 0x7f0e00a2

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/conferencecall/adapters/ParticipantsAdapter$ViewHolder;->removeIcon:Landroid/widget/ImageView;

    .line 129
    return-void
.end method
