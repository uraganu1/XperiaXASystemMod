.class public Lcom/sonyericsson/android/socialphonebook/ice/MyselfView;
.super Landroid/widget/RelativeLayout;
.source "MyselfView.java"


# instance fields
.field private mAvatar:Landroid/widget/QuickContactBadge;

.field private mContactInfo:Lcom/sonyericsson/android/socialphonebook/ice/IceContactData;

.field private mDetail:Landroid/widget/TextView;

.field private mMyselfContainer:Landroid/view/View;

.field private mName:Landroid/widget/TextView;

.field private mPhotoManager:Lcom/android/contacts/photomanager/ContactPhotoManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 42
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 41
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 38
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 37
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 34
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 33
    return-void
.end method


# virtual methods
.method public bind(Lcom/sonyericsson/android/socialphonebook/ice/IceContactData;)V
    .locals 9
    .param p1, "info"    # Lcom/sonyericsson/android/socialphonebook/ice/IceContactData;

    .prologue
    const v2, 0x7f0901f0

    .line 64
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ice/MyselfView;->mAvatar:Landroid/widget/QuickContactBadge;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/QuickContactBadge;->setClickable(Z)V

    .line 65
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/ice/MyselfView;->mContactInfo:Lcom/sonyericsson/android/socialphonebook/ice/IceContactData;

    .line 66
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ice/MyselfView;->mPhotoManager:Lcom/android/contacts/photomanager/ContactPhotoManager;

    invoke-virtual {v0}, Lcom/android/contacts/photomanager/ContactPhotoManager;->refreshCache()V

    .line 68
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/ice/MyselfView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/util/SharedPrefsUtil;->getIceShowMedicalInfo(Landroid/content/Context;)Z

    move-result v7

    .line 69
    .local v7, "isPersonalInfoShown":Z
    if-eqz v7, :cond_2

    .line 70
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/ice/MyselfView;->hasContactName()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 71
    sget-object v0, Landroid/util/Patterns;->PHONE:Ljava/util/regex/Pattern;

    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/ice/MyselfView;->mContactInfo:Lcom/sonyericsson/android/socialphonebook/ice/IceContactData;

    invoke-virtual {v1}, Lcom/sonyericsson/android/socialphonebook/ice/IceContactData;->getContactName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 73
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/ice/MyselfView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/ice/MyselfView;->mContactInfo:Lcom/sonyericsson/android/socialphonebook/ice/IceContactData;

    invoke-virtual {v1}, Lcom/sonyericsson/android/socialphonebook/ice/IceContactData;->getContactName()Ljava/lang/String;

    move-result-object v1

    .line 72
    invoke-static {v0, v1}, Lcom/sonyericsson/android/socialphonebook/util/PhoneNumberHelper;->formatPhoneNumber(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/util/PhoneNumberHelper;->addLtrDirection(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v8

    .line 74
    .local v8, "number":Ljava/lang/CharSequence;
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ice/MyselfView;->mName:Landroid/widget/TextView;

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 81
    .end local v8    # "number":Ljava/lang/CharSequence;
    :goto_0
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ice/MyselfView;->mDetail:Landroid/widget/TextView;

    const v1, 0x7f09033c

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 82
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ice/MyselfView;->mPhotoManager:Lcom/android/contacts/photomanager/ContactPhotoManager;

    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/ice/MyselfView;->mAvatar:Landroid/widget/QuickContactBadge;

    invoke-virtual {p1}, Lcom/sonyericsson/android/socialphonebook/ice/IceContactData;->getPhotoId()J

    move-result-wide v2

    iget-object v4, p0, Lcom/sonyericsson/android/socialphonebook/ice/MyselfView;->mContactInfo:Lcom/sonyericsson/android/socialphonebook/ice/IceContactData;

    invoke-virtual {v4}, Lcom/sonyericsson/android/socialphonebook/ice/IceContactData;->getContactId()J

    move-result-wide v4

    .line 83
    sget-object v6, Lcom/android/contacts/photomanager/ContactPhotoManager;->PERSON_CIRCULAR_DEFAULT_IMAGE_REQUEST:Lcom/android/contacts/photomanager/DefaultImageRequest;

    .line 82
    invoke-virtual/range {v0 .. v6}, Lcom/android/contacts/photomanager/ContactPhotoManager;->loadThumbnail(Landroid/widget/ImageView;JJLcom/android/contacts/photomanager/DefaultImageRequest;)V

    .line 63
    :goto_1
    return-void

    .line 76
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ice/MyselfView;->mName:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/ice/MyselfView;->mContactInfo:Lcom/sonyericsson/android/socialphonebook/ice/IceContactData;

    invoke-virtual {v1}, Lcom/sonyericsson/android/socialphonebook/ice/IceContactData;->getContactName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 79
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ice/MyselfView;->mName:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 85
    :cond_2
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ice/MyselfView;->mName:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 86
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ice/MyselfView;->mDetail:Landroid/widget/TextView;

    const v1, 0x7f09033d

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 87
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/ice/MyselfView;->mPhotoManager:Lcom/android/contacts/photomanager/ContactPhotoManager;

    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/ice/MyselfView;->mAvatar:Landroid/widget/QuickContactBadge;

    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ice/MyselfView;->mContactInfo:Lcom/sonyericsson/android/socialphonebook/ice/IceContactData;

    invoke-virtual {v0}, Lcom/sonyericsson/android/socialphonebook/ice/IceContactData;->getContactId()J

    move-result-wide v4

    .line 88
    sget-object v6, Lcom/android/contacts/photomanager/ContactPhotoManager;->PERSON_CIRCULAR_DEFAULT_IMAGE_REQUEST:Lcom/android/contacts/photomanager/DefaultImageRequest;

    .line 87
    const/4 v3, 0x0

    invoke-virtual/range {v1 .. v6}, Lcom/android/contacts/photomanager/ContactPhotoManager;->loadThumbnail(Landroid/widget/ImageView;Landroid/net/Uri;JLcom/android/contacts/photomanager/DefaultImageRequest;)V

    goto :goto_1
.end method

.method public getContactUri()Landroid/net/Uri;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 117
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ice/MyselfView;->mContactInfo:Lcom/sonyericsson/android/socialphonebook/ice/IceContactData;

    if-nez v0, :cond_0

    return-object v1

    .line 119
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ice/MyselfView;->mContactInfo:Lcom/sonyericsson/android/socialphonebook/ice/IceContactData;

    invoke-virtual {v0}, Lcom/sonyericsson/android/socialphonebook/ice/IceContactData;->getUri()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public hasContactName()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 106
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/ice/MyselfView;->mContactInfo:Lcom/sonyericsson/android/socialphonebook/ice/IceContactData;

    if-nez v1, :cond_0

    return v0

    .line 108
    :cond_0
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/ice/MyselfView;->mContactInfo:Lcom/sonyericsson/android/socialphonebook/ice/IceContactData;

    invoke-virtual {v1}, Lcom/sonyericsson/android/socialphonebook/ice/IceContactData;->getContactName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected onFinishInflate()V
    .locals 3

    .prologue
    const v2, 0x7f0e01b3

    .line 47
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 48
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/ice/MyselfView;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 50
    :cond_0
    const v0, 0x7f0e01b0

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/socialphonebook/ice/MyselfView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ice/MyselfView;->mMyselfContainer:Landroid/view/View;

    .line 51
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ice/MyselfView;->mMyselfContainer:Landroid/view/View;

    const v1, 0x7f0e01b1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/QuickContactBadge;

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ice/MyselfView;->mAvatar:Landroid/widget/QuickContactBadge;

    .line 52
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/ice/MyselfView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/contacts/photomanager/ContactPhotoManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/photomanager/ContactPhotoManager;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ice/MyselfView;->mPhotoManager:Lcom/android/contacts/photomanager/ContactPhotoManager;

    .line 53
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ice/MyselfView;->mMyselfContainer:Landroid/view/View;

    const v1, 0x7f0e01b4

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ice/MyselfView;->mName:Landroid/widget/TextView;

    .line 54
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ice/MyselfView;->mMyselfContainer:Landroid/view/View;

    const v1, 0x7f0e01b5

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ice/MyselfView;->mDetail:Landroid/widget/TextView;

    .line 56
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ice/MyselfView;->mAvatar:Landroid/widget/QuickContactBadge;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/QuickContactBadge;->setOverlay(Landroid/graphics/drawable/Drawable;)V

    .line 59
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ice/MyselfView;->mMyselfContainer:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setNextFocusRightId(I)V

    .line 60
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ice/MyselfView;->mMyselfContainer:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setNextFocusForwardId(I)V

    .line 46
    return-void
.end method

.method public updateViews()V
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ice/MyselfView;->mContactInfo:Lcom/sonyericsson/android/socialphonebook/ice/IceContactData;

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/socialphonebook/ice/MyselfView;->bind(Lcom/sonyericsson/android/socialphonebook/ice/IceContactData;)V

    .line 95
    return-void
.end method
