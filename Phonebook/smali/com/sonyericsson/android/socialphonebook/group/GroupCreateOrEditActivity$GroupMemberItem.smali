.class public final Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity$GroupMemberItem;
.super Ljava/lang/Object;
.source "GroupCreateOrEditActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "GroupMemberItem"
.end annotation


# instance fields
.field public mContactId:J

.field public mName:Ljava/lang/String;

.field public mPhotoId:J

.field public mPhotoUri:Landroid/net/Uri;

.field public mRawContactId:J


# direct methods
.method public constructor <init>(Ljava/lang/String;JJJLandroid/net/Uri;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "rawContactId"    # J
    .param p4, "contactId"    # J
    .param p6, "photoId"    # J
    .param p8, "photoUri"    # Landroid/net/Uri;

    .prologue
    .line 1148
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1150
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity$GroupMemberItem;->mName:Ljava/lang/String;

    .line 1151
    iput-wide p2, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity$GroupMemberItem;->mRawContactId:J

    .line 1152
    iput-wide p4, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity$GroupMemberItem;->mContactId:J

    .line 1153
    iput-wide p6, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity$GroupMemberItem;->mPhotoId:J

    .line 1154
    iput-object p8, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity$GroupMemberItem;->mPhotoUri:Landroid/net/Uri;

    .line 1149
    return-void
.end method


# virtual methods
.method public equals(Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity$GroupMemberItem;)Ljava/lang/Boolean;
    .locals 6
    .param p1, "item"    # Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity$GroupMemberItem;

    .prologue
    const/4 v0, 0x0

    .line 1145
    iget-wide v2, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity$GroupMemberItem;->mRawContactId:J

    iget-wide v4, p1, Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity$GroupMemberItem;->mRawContactId:J

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    iget-wide v2, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity$GroupMemberItem;->mContactId:J

    iget-wide v4, p1, Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity$GroupMemberItem;->mContactId:J

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
