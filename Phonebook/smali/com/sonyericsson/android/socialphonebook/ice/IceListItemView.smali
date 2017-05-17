.class public Lcom/sonyericsson/android/socialphonebook/ice/IceListItemView;
.super Landroid/widget/RelativeLayout;
.source "IceListItemView.java"


# instance fields
.field private mCheckbox:Landroid/widget/CheckBox;

.field private mContactImage:Landroid/widget/QuickContactBadge;

.field private mIceBadge:Landroid/widget/ImageView;

.field private mName:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 44
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 43
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 48
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 47
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 52
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 51
    return-void
.end method


# virtual methods
.method public disableContactImageClick()V
    .locals 2

    .prologue
    .line 93
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ice/IceListItemView;->mContactImage:Landroid/widget/QuickContactBadge;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/QuickContactBadge;->setClickable(Z)V

    .line 92
    return-void
.end method

.method public getContactImage()Landroid/widget/QuickContactBadge;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ice/IceListItemView;->mContactImage:Landroid/widget/QuickContactBadge;

    return-object v0
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 57
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 58
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/ice/IceListItemView;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 60
    :cond_0
    const v0, 0x7f0e018d

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/socialphonebook/ice/IceListItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ice/IceListItemView;->mName:Landroid/widget/TextView;

    .line 61
    const v0, 0x7f0e0187

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/socialphonebook/ice/IceListItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/QuickContactBadge;

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ice/IceListItemView;->mContactImage:Landroid/widget/QuickContactBadge;

    .line 62
    const v0, 0x7f0e018e

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/socialphonebook/ice/IceListItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ice/IceListItemView;->mCheckbox:Landroid/widget/CheckBox;

    .line 63
    const v0, 0x7f0e0188

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/socialphonebook/ice/IceListItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ice/IceListItemView;->mIceBadge:Landroid/widget/ImageView;

    .line 65
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ice/IceListItemView;->mContactImage:Landroid/widget/QuickContactBadge;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/QuickContactBadge;->setOverlay(Landroid/graphics/drawable/Drawable;)V

    .line 56
    return-void
.end method

.method public setChecked(Z)V
    .locals 1
    .param p1, "checked"    # Z

    .prologue
    .line 105
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ice/IceListItemView;->mCheckbox:Landroid/widget/CheckBox;

    invoke-virtual {v0, p1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 104
    return-void
.end method

.method public setContactImage(Lcom/android/contacts/photomanager/ContactPhotoManager;JJ)V
    .locals 8
    .param p1, "manager"    # Lcom/android/contacts/photomanager/ContactPhotoManager;
    .param p2, "photoId"    # J
    .param p4, "contactId"    # J

    .prologue
    .line 84
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/ice/IceListItemView;->mContactImage:Landroid/widget/QuickContactBadge;

    .line 85
    sget-object v6, Lcom/android/contacts/photomanager/ContactPhotoManager;->PERSON_CIRCULAR_DEFAULT_IMAGE_REQUEST:Lcom/android/contacts/photomanager/DefaultImageRequest;

    move-object v0, p1

    move-wide v2, p2

    move-wide v4, p4

    .line 84
    invoke-virtual/range {v0 .. v6}, Lcom/android/contacts/photomanager/ContactPhotoManager;->loadThumbnail(Landroid/widget/ImageView;JJLcom/android/contacts/photomanager/DefaultImageRequest;)V

    .line 83
    return-void
.end method

.method public setContactName(Ljava/lang/String;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 74
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ice/IceListItemView;->mName:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 73
    return-void
.end method

.method public setIceBadgeVisibility(Z)V
    .locals 2
    .param p1, "isVisible"    # Z

    .prologue
    .line 97
    if-eqz p1, :cond_0

    .line 98
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ice/IceListItemView;->mIceBadge:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 96
    :goto_0
    return-void

    .line 100
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ice/IceListItemView;->mIceBadge:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method public showCheckbox()V
    .locals 2

    .prologue
    .line 89
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ice/IceListItemView;->mCheckbox:Landroid/widget/CheckBox;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 88
    return-void
.end method
