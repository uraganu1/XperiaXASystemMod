.class public Lcom/sonyericsson/android/socialphonebook/util/ParcelableContactItem;
.super Ljava/lang/Object;
.source "ParcelableContactItem.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/socialphonebook/util/ParcelableContactItem$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/sonyericsson/android/socialphonebook/util/ParcelableContactItem;",
            ">;"
        }
    .end annotation
.end field

.field private static final KEY_CONTACT_ID:Ljava/lang/String; = "contact_id"

.field private static final KEY_DIAPLAY_NAME_ALT:Ljava/lang/String; = "display_name_alt"

.field private static final KEY_DISPLAY_NAME:Ljava/lang/String; = "display_name"

.field private static final KEY_IN_VISIBLE_GROUP:Ljava/lang/String; = "in_visible_group"

.field private static final KEY_PHOTO_ID:Ljava/lang/String; = "photo_id"


# instance fields
.field private final mContactId:J

.field private final mDisplayName:Ljava/lang/String;

.field private final mDisplayNameAlt:Ljava/lang/String;

.field private final mIsInVisibleGroup:Z

.field private final mPhotoId:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 82
    new-instance v0, Lcom/sonyericsson/android/socialphonebook/util/ParcelableContactItem$1;

    invoke-direct {v0}, Lcom/sonyericsson/android/socialphonebook/util/ParcelableContactItem$1;-><init>()V

    .line 81
    sput-object v0, Lcom/sonyericsson/android/socialphonebook/util/ParcelableContactItem;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 12
    return-void
.end method

.method public constructor <init>(JLjava/lang/String;Ljava/lang/String;JZ)V
    .locals 1
    .param p1, "contactId"    # J
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "nameAlt"    # Ljava/lang/String;
    .param p5, "photoId"    # J
    .param p7, "isInVisibleGroup"    # Z

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-wide p1, p0, Lcom/sonyericsson/android/socialphonebook/util/ParcelableContactItem;->mContactId:J

    .line 28
    iput-object p3, p0, Lcom/sonyericsson/android/socialphonebook/util/ParcelableContactItem;->mDisplayName:Ljava/lang/String;

    .line 29
    iput-object p4, p0, Lcom/sonyericsson/android/socialphonebook/util/ParcelableContactItem;->mDisplayNameAlt:Ljava/lang/String;

    .line 30
    iput-wide p5, p0, Lcom/sonyericsson/android/socialphonebook/util/ParcelableContactItem;->mPhotoId:J

    .line 31
    iput-boolean p7, p0, Lcom/sonyericsson/android/socialphonebook/util/ParcelableContactItem;->mIsInVisibleGroup:Z

    .line 26
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 4
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v0

    .line 74
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v1, "contact_id"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/sonyericsson/android/socialphonebook/util/ParcelableContactItem;->mContactId:J

    .line 75
    const-string/jumbo v1, "display_name"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sonyericsson/android/socialphonebook/util/ParcelableContactItem;->mDisplayName:Ljava/lang/String;

    .line 76
    const-string/jumbo v1, "display_name_alt"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sonyericsson/android/socialphonebook/util/ParcelableContactItem;->mDisplayNameAlt:Ljava/lang/String;

    .line 77
    const-string/jumbo v1, "photo_id"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/sonyericsson/android/socialphonebook/util/ParcelableContactItem;->mPhotoId:J

    .line 78
    const-string/jumbo v1, "in_visible_group"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/sonyericsson/android/socialphonebook/util/ParcelableContactItem;->mIsInVisibleGroup:Z

    .line 72
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/sonyericsson/android/socialphonebook/util/ParcelableContactItem;)V
    .locals 0
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/socialphonebook/util/ParcelableContactItem;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 37
    const/4 v0, 0x0

    return v0
.end method

.method public getContactId()J
    .locals 2

    .prologue
    .line 57
    iget-wide v0, p0, Lcom/sonyericsson/android/socialphonebook/util/ParcelableContactItem;->mContactId:J

    return-wide v0
.end method

.method public getDisplayName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/util/ParcelableContactItem;->mDisplayName:Ljava/lang/String;

    return-object v0
.end method

.method public getDisplayNameAlt()Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/util/ParcelableContactItem;->mDisplayNameAlt:Ljava/lang/String;

    return-object v0
.end method

.method public getPhotoId()J
    .locals 2

    .prologue
    .line 53
    iget-wide v0, p0, Lcom/sonyericsson/android/socialphonebook/util/ParcelableContactItem;->mPhotoId:J

    return-wide v0
.end method

.method public isInVisibleGroup()Z
    .locals 1

    .prologue
    .line 69
    iget-boolean v0, p0, Lcom/sonyericsson/android/socialphonebook/util/ParcelableContactItem;->mIsInVisibleGroup:Z

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 43
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 44
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v1, "contact_id"

    iget-wide v2, p0, Lcom/sonyericsson/android/socialphonebook/util/ParcelableContactItem;->mContactId:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 45
    const-string/jumbo v1, "display_name"

    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/util/ParcelableContactItem;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    const-string/jumbo v1, "display_name_alt"

    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/util/ParcelableContactItem;->mDisplayNameAlt:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    const-string/jumbo v1, "photo_id"

    iget-wide v2, p0, Lcom/sonyericsson/android/socialphonebook/util/ParcelableContactItem;->mPhotoId:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 48
    const-string/jumbo v1, "in_visible_group"

    iget-boolean v2, p0, Lcom/sonyericsson/android/socialphonebook/util/ParcelableContactItem;->mIsInVisibleGroup:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 49
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 41
    return-void
.end method
