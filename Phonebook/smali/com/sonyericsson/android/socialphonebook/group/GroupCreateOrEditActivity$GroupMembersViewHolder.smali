.class Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity$GroupMembersViewHolder;
.super Ljava/lang/Object;
.source "GroupCreateOrEditActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "GroupMembersViewHolder"
.end annotation


# instance fields
.field deleteView:Landroid/widget/ImageView;

.field nameView:Landroid/widget/TextView;

.field photoView:Landroid/widget/QuickContactBadge;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 1208
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1209
    const v0, 0x7f0e00bc

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity$GroupMembersViewHolder;->nameView:Landroid/widget/TextView;

    .line 1210
    const v0, 0x7f0e00c7

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity$GroupMembersViewHolder;->deleteView:Landroid/widget/ImageView;

    .line 1211
    const v0, 0x7f0e00d0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/QuickContactBadge;

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity$GroupMembersViewHolder;->photoView:Landroid/widget/QuickContactBadge;

    .line 1208
    return-void
.end method
