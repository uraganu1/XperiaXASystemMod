.class public final Lcom/sonyericsson/android/socialphonebook/MultiChoiceContactsActivity$ContactNameCache;
.super Ljava/lang/Object;
.source "MultiChoiceContactsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/socialphonebook/MultiChoiceContactsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1c
    name = "ContactNameCache"
.end annotation


# instance fields
.field protected mDataView:Landroid/widget/TextView;

.field protected mIconView:Landroid/widget/ImageView;

.field protected mNameBuffer:Landroid/database/CharArrayBuffer;

.field protected mNameView:Landroid/widget/TextView;

.field protected mPhotoView:Landroid/widget/QuickContactBadge;

.field protected mSubLineView:Landroid/view/View;


# direct methods
.method protected constructor <init>()V
    .locals 2

    .prologue
    .line 377
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 365
    new-instance v0, Landroid/database/CharArrayBuffer;

    .line 366
    const/16 v1, 0x80

    .line 365
    invoke-direct {v0, v1}, Landroid/database/CharArrayBuffer;-><init>(I)V

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/MultiChoiceContactsActivity$ContactNameCache;->mNameBuffer:Landroid/database/CharArrayBuffer;

    .line 377
    return-void
.end method
