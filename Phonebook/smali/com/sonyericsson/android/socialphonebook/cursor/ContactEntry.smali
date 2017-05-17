.class public Lcom/sonyericsson/android/socialphonebook/cursor/ContactEntry;
.super Lcom/sonyericsson/android/socialphonebook/cursor/CursorRow;
.source "ContactEntry.java"


# instance fields
.field private mDisplayName:Ljava/lang/String;

.field private mId:J

.field private mPhoneticName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/sonyericsson/android/socialphonebook/cursor/CursorRow;-><init>()V

    return-void
.end method


# virtual methods
.method public final getDisplayName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/cursor/ContactEntry;->mDisplayName:Ljava/lang/String;

    return-object v0
.end method

.method public final getId()J
    .locals 2

    .prologue
    .line 40
    iget-wide v0, p0, Lcom/sonyericsson/android/socialphonebook/cursor/ContactEntry;->mId:J

    return-wide v0
.end method

.method public final getPhoneticName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/cursor/ContactEntry;->mPhoneticName:Ljava/lang/String;

    return-object v0
.end method

.method public final getSortString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/cursor/ContactEntry;->mPhoneticName:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 66
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/cursor/ContactEntry;->mDisplayName:Ljava/lang/String;

    return-object v0

    .line 68
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/cursor/ContactEntry;->mPhoneticName:Ljava/lang/String;

    return-object v0
.end method

.method public final setDisplayName(Ljava/lang/String;)V
    .locals 1
    .param p1, "aDisplayName"    # Ljava/lang/String;

    .prologue
    .line 94
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 95
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/cursor/ContactEntry;->mDisplayName:Ljava/lang/String;

    .line 93
    :goto_0
    return-void

    .line 97
    :cond_0
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/cursor/ContactEntry;->mDisplayName:Ljava/lang/String;

    goto :goto_0
.end method

.method public final setId(J)V
    .locals 1
    .param p1, "aId"    # J

    .prologue
    .line 77
    iput-wide p1, p0, Lcom/sonyericsson/android/socialphonebook/cursor/ContactEntry;->mId:J

    .line 76
    return-void
.end method

.method public final setPhoneticName(Ljava/lang/String;)V
    .locals 1
    .param p1, "aPhoneticName"    # Ljava/lang/String;

    .prologue
    .line 107
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 108
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/cursor/ContactEntry;->mPhoneticName:Ljava/lang/String;

    .line 106
    :goto_0
    return-void

    .line 110
    :cond_0
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/cursor/ContactEntry;->mPhoneticName:Ljava/lang/String;

    goto :goto_0
.end method

.method public final setSortString(Ljava/lang/String;)V
    .locals 1
    .param p1, "aSortString"    # Ljava/lang/String;

    .prologue
    .line 85
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/cursor/ContactEntry;->mDisplayName:Ljava/lang/String;

    .line 86
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/cursor/ContactEntry;->mPhoneticName:Ljava/lang/String;

    .line 84
    return-void
.end method
