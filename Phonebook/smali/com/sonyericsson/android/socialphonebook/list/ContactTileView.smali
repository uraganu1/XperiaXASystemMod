.class public Lcom/sonyericsson/android/socialphonebook/list/ContactTileView;
.super Landroid/widget/RelativeLayout;
.source "ContactTileView.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mBidiFormatter:Landroid/text/BidiFormatter;

.field private mImageView:Landroid/widget/ImageView;

.field private mLookupUri:Landroid/net/Uri;

.field private mName:Landroid/widget/TextView;

.field private mPhotoManager:Lcom/android/contacts/photomanager/ContactPhotoManager;

.field private mQuickContact:Landroid/widget/QuickContactBadge;

.field private mStatus:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    const-class v0, Lcom/sonyericsson/android/socialphonebook/list/ContactTileView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/android/socialphonebook/list/ContactTileView;->TAG:Ljava/lang/String;

    .line 41
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 53
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 54
    invoke-static {}, Landroid/text/BidiFormatter;->getInstance()Landroid/text/BidiFormatter;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/list/ContactTileView;->mBidiFormatter:Landroid/text/BidiFormatter;

    .line 52
    return-void
.end method


# virtual methods
.method public loadFromContact(Lcom/sonyericsson/android/socialphonebook/list/ContactTileAdapter$ContactEntry;)V
    .locals 8
    .param p1, "entry"    # Lcom/sonyericsson/android/socialphonebook/list/ContactTileAdapter$ContactEntry;

    .prologue
    const/4 v3, 0x0

    .line 74
    if-eqz p1, :cond_4

    .line 75
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/list/ContactTileView;->mName:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/list/ContactTileView;->mBidiFormatter:Landroid/text/BidiFormatter;

    iget-object v2, p1, Lcom/sonyericsson/android/socialphonebook/list/ContactTileAdapter$ContactEntry;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/text/BidiFormatter;->unicodeWrap(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 76
    iget-object v0, p1, Lcom/sonyericsson/android/socialphonebook/list/ContactTileAdapter$ContactEntry;->lookupKey:Landroid/net/Uri;

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/list/ContactTileView;->mLookupUri:Landroid/net/Uri;

    .line 78
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/list/ContactTileView;->mStatus:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 79
    iget-object v0, p1, Lcom/sonyericsson/android/socialphonebook/list/ContactTileAdapter$ContactEntry;->status:Ljava/lang/String;

    if-nez v0, :cond_2

    .line 80
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/list/ContactTileView;->mStatus:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 87
    :cond_0
    :goto_0
    invoke-virtual {p0, v3}, Lcom/sonyericsson/android/socialphonebook/list/ContactTileView;->setVisibility(I)V

    .line 89
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/list/ContactTileView;->mPhotoManager:Lcom/android/contacts/photomanager/ContactPhotoManager;

    if-eqz v0, :cond_3

    .line 90
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/list/ContactTileView;->mQuickContact:Landroid/widget/QuickContactBadge;

    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/list/ContactTileView;->mLookupUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Landroid/widget/QuickContactBadge;->assignContactUri(Landroid/net/Uri;)V

    .line 91
    iget-wide v4, p1, Lcom/sonyericsson/android/socialphonebook/list/ContactTileAdapter$ContactEntry;->contactId:J

    .line 92
    .local v4, "contactId":J
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/list/ContactTileView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 93
    const v1, 0x7f0d021b

    .line 92
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    .line 94
    .local v6, "badgeSize":I
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/list/ContactTileView;->mPhotoManager:Lcom/android/contacts/photomanager/ContactPhotoManager;

    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/list/ContactTileView;->mImageView:Landroid/widget/ImageView;

    iget-object v3, p1, Lcom/sonyericsson/android/socialphonebook/list/ContactTileAdapter$ContactEntry;->photoUri:Landroid/net/Uri;

    .line 95
    sget-object v7, Lcom/android/contacts/photomanager/ContactPhotoManager;->PERSON_CIRCULAR_DEFAULT_IMAGE_REQUEST:Lcom/android/contacts/photomanager/DefaultImageRequest;

    .line 94
    invoke-virtual/range {v1 .. v7}, Lcom/android/contacts/photomanager/ContactPhotoManager;->loadPhoto(Landroid/widget/ImageView;Landroid/net/Uri;JILcom/android/contacts/photomanager/DefaultImageRequest;)V

    .line 100
    .end local v4    # "contactId":J
    .end local v6    # "badgeSize":I
    :goto_1
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/list/ContactTileView;->mQuickContact:Landroid/widget/QuickContactBadge;

    if-eqz v0, :cond_1

    .line 101
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/list/ContactTileView;->mQuickContact:Landroid/widget/QuickContactBadge;

    iget-object v1, p1, Lcom/sonyericsson/android/socialphonebook/list/ContactTileAdapter$ContactEntry;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/QuickContactBadge;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 72
    :cond_1
    :goto_2
    return-void

    .line 82
    :cond_2
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/list/ContactTileView;->mStatus:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/sonyericsson/android/socialphonebook/list/ContactTileAdapter$ContactEntry;->status:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 83
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/list/ContactTileView;->mStatus:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 97
    :cond_3
    sget-object v0, Lcom/sonyericsson/android/socialphonebook/list/ContactTileView;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "contactPhotoManager not set"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 104
    :cond_4
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/socialphonebook/list/ContactTileView;->setVisibility(I)V

    goto :goto_2
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 59
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 60
    const v0, 0x7f0e00c4

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/socialphonebook/list/ContactTileView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/list/ContactTileView;->mName:Landroid/widget/TextView;

    .line 61
    const v0, 0x7f0e00c6

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/socialphonebook/list/ContactTileView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/QuickContactBadge;

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/list/ContactTileView;->mQuickContact:Landroid/widget/QuickContactBadge;

    .line 62
    const v0, 0x7f0e00c5

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/socialphonebook/list/ContactTileView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/list/ContactTileView;->mStatus:Landroid/widget/TextView;

    .line 63
    const v0, 0x7f0e00c3

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/socialphonebook/list/ContactTileView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/list/ContactTileView;->mImageView:Landroid/widget/ImageView;

    .line 64
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/list/ContactTileView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/contacts/photomanager/ContactPhotoManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/photomanager/ContactPhotoManager;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/list/ContactTileView;->mPhotoManager:Lcom/android/contacts/photomanager/ContactPhotoManager;

    .line 65
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/list/ContactTileView;->mQuickContact:Landroid/widget/QuickContactBadge;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/QuickContactBadge;->setOverlay(Landroid/graphics/drawable/Drawable;)V

    .line 58
    return-void
.end method
