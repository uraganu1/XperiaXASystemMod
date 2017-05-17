.class public Lcom/sonyericsson/android/socialphonebook/ice/lockscreen/LockScreenListItemView;
.super Landroid/widget/RelativeLayout;
.source "LockScreenListItemView.java"


# static fields
.field private static final NUMBER_OF_STATIC_VIEWS:I = 0x1


# instance fields
.field private mContactImage:Landroid/widget/QuickContactBadge;

.field private mContactName:Landroid/widget/TextView;

.field private mContainer:Landroid/widget/LinearLayout;

.field private mIceBadge:Landroid/widget/ImageView;

.field private mIcePrefix:Ljava/lang/String;


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
.method public addViewToContainer(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 100
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ice/lockscreen/LockScreenListItemView;->mContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 99
    return-void
.end method

.method public clearContainer()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 116
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/ice/lockscreen/LockScreenListItemView;->mContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    .line 118
    .local v0, "childrenCount":I
    if-gt v0, v3, :cond_0

    .line 119
    return-void

    .line 121
    :cond_0
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/ice/lockscreen/LockScreenListItemView;->mContainer:Landroid/widget/LinearLayout;

    add-int/lit8 v2, v0, -0x1

    invoke-virtual {v1, v3, v2}, Landroid/widget/LinearLayout;->removeViewsInLayout(II)V

    .line 115
    return-void
.end method

.method public disableContactImageClick()V
    .locals 2

    .prologue
    .line 91
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ice/lockscreen/LockScreenListItemView;->mContactImage:Landroid/widget/QuickContactBadge;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/QuickContactBadge;->setClickable(Z)V

    .line 90
    return-void
.end method

.method public getContactImage()Landroid/widget/QuickContactBadge;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ice/lockscreen/LockScreenListItemView;->mContactImage:Landroid/widget/QuickContactBadge;

    return-object v0
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 57
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 58
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/ice/lockscreen/LockScreenListItemView;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 59
    return-void

    .line 61
    :cond_0
    const v0, 0x7f0e018d

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/socialphonebook/ice/lockscreen/LockScreenListItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ice/lockscreen/LockScreenListItemView;->mContactName:Landroid/widget/TextView;

    .line 62
    const v0, 0x7f0e0187

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/socialphonebook/ice/lockscreen/LockScreenListItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/QuickContactBadge;

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ice/lockscreen/LockScreenListItemView;->mContactImage:Landroid/widget/QuickContactBadge;

    .line 63
    const v0, 0x7f0e0193

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/socialphonebook/ice/lockscreen/LockScreenListItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ice/lockscreen/LockScreenListItemView;->mContainer:Landroid/widget/LinearLayout;

    .line 64
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/ice/lockscreen/LockScreenListItemView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f090052

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ice/lockscreen/LockScreenListItemView;->mIcePrefix:Ljava/lang/String;

    .line 65
    const v0, 0x7f0e0188

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/socialphonebook/ice/lockscreen/LockScreenListItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ice/lockscreen/LockScreenListItemView;->mIceBadge:Landroid/widget/ImageView;

    .line 66
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ice/lockscreen/LockScreenListItemView;->mContactImage:Landroid/widget/QuickContactBadge;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/QuickContactBadge;->setOverlay(Landroid/graphics/drawable/Drawable;)V

    .line 56
    return-void
.end method

.method public setContactImage(Lcom/android/contacts/photomanager/ContactPhotoManager;JJ)V
    .locals 8
    .param p1, "manager"    # Lcom/android/contacts/photomanager/ContactPhotoManager;
    .param p2, "photoId"    # J
    .param p4, "contactId"    # J

    .prologue
    .line 86
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/ice/lockscreen/LockScreenListItemView;->mContactImage:Landroid/widget/QuickContactBadge;

    .line 87
    sget-object v6, Lcom/android/contacts/photomanager/ContactPhotoManager;->PERSON_CIRCULAR_DEFAULT_IMAGE_REQUEST:Lcom/android/contacts/photomanager/DefaultImageRequest;

    move-object v0, p1

    move-wide v2, p2

    move-wide v4, p4

    .line 86
    invoke-virtual/range {v0 .. v6}, Lcom/android/contacts/photomanager/ContactPhotoManager;->loadThumbnail(Landroid/widget/ImageView;JJLcom/android/contacts/photomanager/DefaultImageRequest;)V

    .line 85
    return-void
.end method

.method public setContactName(Ljava/lang/String;)V
    .locals 3
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 75
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ice/lockscreen/LockScreenListItemView;->mContactName:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/ice/lockscreen/LockScreenListItemView;->mIcePrefix:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 74
    return-void
.end method

.method public setIceBadgeVisibility(Z)V
    .locals 2
    .param p1, "isVisible"    # Z

    .prologue
    .line 104
    if-eqz p1, :cond_0

    .line 105
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ice/lockscreen/LockScreenListItemView;->mIceBadge:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 103
    :goto_0
    return-void

    .line 107
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ice/lockscreen/LockScreenListItemView;->mIceBadge:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method
