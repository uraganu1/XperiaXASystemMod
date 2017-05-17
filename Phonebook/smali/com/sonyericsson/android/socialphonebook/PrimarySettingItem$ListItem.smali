.class public final Lcom/sonyericsson/android/socialphonebook/PrimarySettingItem$ListItem;
.super Ljava/lang/Object;
.source "PrimarySettingItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/socialphonebook/PrimarySettingItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ListItem"
.end annotation


# static fields
.field public static final TYPE_EMAIL:I = 0x1

.field public static final TYPE_HEADER:I = 0x4

.field public static final TYPE_IM:I = 0x2

.field public static final TYPE_PHONENUMBER:I = 0x0

.field public static final TYPE_UNKNOWN:I = 0x5

.field public static final TYPE_WEBSITE:I = 0x3


# instance fields
.field public mIsSingleLine:Z

.field public final mItem:Lcom/sonyericsson/android/socialphonebook/PrimarySettingItem$DataItem;

.field public mItemType:I

.field public mShowPrimary:Z


# direct methods
.method public constructor <init>(Lcom/sonyericsson/android/socialphonebook/PrimarySettingItem$DataItem;)V
    .locals 4
    .param p1, "item"    # Lcom/sonyericsson/android/socialphonebook/PrimarySettingItem$DataItem;

    .prologue
    const/4 v3, 0x5

    const/4 v2, 0x1

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/PrimarySettingItem$ListItem;->mItem:Lcom/sonyericsson/android/socialphonebook/PrimarySettingItem$DataItem;

    .line 41
    if-eqz p1, :cond_4

    .line 42
    iget-object v0, p1, Lcom/sonyericsson/android/socialphonebook/PrimarySettingItem$DataItem;->mMime:Ljava/lang/String;

    .line 43
    .local v0, "mime":Ljava/lang/String;
    const-string/jumbo v1, "vnd.android.cursor.item/phone_v2"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 44
    const/4 v1, 0x0

    iput v1, p0, Lcom/sonyericsson/android/socialphonebook/PrimarySettingItem$ListItem;->mItemType:I

    .line 57
    .end local v0    # "mime":Ljava/lang/String;
    :goto_0
    iput-boolean v2, p0, Lcom/sonyericsson/android/socialphonebook/PrimarySettingItem$ListItem;->mIsSingleLine:Z

    .line 58
    iput-boolean v2, p0, Lcom/sonyericsson/android/socialphonebook/PrimarySettingItem$ListItem;->mShowPrimary:Z

    .line 39
    return-void

    .line 45
    .restart local v0    # "mime":Ljava/lang/String;
    :cond_0
    const-string/jumbo v1, "vnd.android.cursor.item/email_v2"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 46
    iput v2, p0, Lcom/sonyericsson/android/socialphonebook/PrimarySettingItem$ListItem;->mItemType:I

    goto :goto_0

    .line 47
    :cond_1
    const-string/jumbo v1, "vnd.android.cursor.item/im"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 48
    const/4 v1, 0x2

    iput v1, p0, Lcom/sonyericsson/android/socialphonebook/PrimarySettingItem$ListItem;->mItemType:I

    goto :goto_0

    .line 49
    :cond_2
    const-string/jumbo v1, "vnd.android.cursor.item/website"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 50
    const/4 v1, 0x3

    iput v1, p0, Lcom/sonyericsson/android/socialphonebook/PrimarySettingItem$ListItem;->mItemType:I

    goto :goto_0

    .line 52
    :cond_3
    iput v3, p0, Lcom/sonyericsson/android/socialphonebook/PrimarySettingItem$ListItem;->mItemType:I

    goto :goto_0

    .line 55
    .end local v0    # "mime":Ljava/lang/String;
    :cond_4
    iput v3, p0, Lcom/sonyericsson/android/socialphonebook/PrimarySettingItem$ListItem;->mItemType:I

    goto :goto_0
.end method

.method public constructor <init>(Lcom/sonyericsson/android/socialphonebook/PrimarySettingItem$DataItem;I)V
    .locals 0
    .param p1, "item"    # Lcom/sonyericsson/android/socialphonebook/PrimarySettingItem$DataItem;
    .param p2, "itemType"    # I

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/PrimarySettingItem$ListItem;->mItem:Lcom/sonyericsson/android/socialphonebook/PrimarySettingItem$DataItem;

    .line 63
    iput p2, p0, Lcom/sonyericsson/android/socialphonebook/PrimarySettingItem$ListItem;->mItemType:I

    .line 61
    return-void
.end method


# virtual methods
.method public clearSingleLineFlag()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 81
    iget-boolean v0, p0, Lcom/sonyericsson/android/socialphonebook/PrimarySettingItem$ListItem;->mIsSingleLine:Z

    if-eqz v0, :cond_1

    .line 82
    iput-boolean v4, p0, Lcom/sonyericsson/android/socialphonebook/PrimarySettingItem$ListItem;->mIsSingleLine:Z

    .line 83
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/PrimarySettingItem$ListItem;->mItem:Lcom/sonyericsson/android/socialphonebook/PrimarySettingItem$DataItem;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/PrimarySettingItem$ListItem;->mItem:Lcom/sonyericsson/android/socialphonebook/PrimarySettingItem$DataItem;

    iget-wide v0, v0, Lcom/sonyericsson/android/socialphonebook/PrimarySettingItem$DataItem;->mIsSuperPrimary:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 84
    :cond_0
    iput-boolean v4, p0, Lcom/sonyericsson/android/socialphonebook/PrimarySettingItem$ListItem;->mShowPrimary:Z

    .line 80
    :cond_1
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "another"    # Ljava/lang/Object;

    .prologue
    const/4 v0, 0x0

    .line 68
    instance-of v1, p1, Lcom/sonyericsson/android/socialphonebook/PrimarySettingItem$ListItem;

    if-eqz v1, :cond_1

    .line 69
    iget v1, p0, Lcom/sonyericsson/android/socialphonebook/PrimarySettingItem$ListItem;->mItemType:I

    check-cast p1, Lcom/sonyericsson/android/socialphonebook/PrimarySettingItem$ListItem;

    .end local p1    # "another":Ljava/lang/Object;
    iget v2, p1, Lcom/sonyericsson/android/socialphonebook/PrimarySettingItem$ListItem;->mItemType:I

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0

    .line 71
    .restart local p1    # "another":Ljava/lang/Object;
    :cond_1
    return v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 77
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
