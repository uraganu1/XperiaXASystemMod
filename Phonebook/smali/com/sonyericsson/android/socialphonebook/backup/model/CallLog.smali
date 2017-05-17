.class public Lcom/sonyericsson/android/socialphonebook/backup/model/CallLog;
.super Ljava/lang/Object;
.source "CallLog.java"


# instance fields
.field private mCachedName:Ljava/lang/String;

.field private mCachedNumberLabel:Ljava/lang/String;

.field private mCachedNumberType:Ljava/lang/String;

.field private mDate:Ljava/lang/String;

.field private mDuration:Ljava/lang/String;

.field private mId:Ljava/lang/String;

.field private mNew:Ljava/lang/String;

.field private mNumber:Ljava/lang/String;

.field private mNumberPresentation:I

.field private mType:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    const/4 v0, 0x1

    iput v0, p0, Lcom/sonyericsson/android/socialphonebook/backup/model/CallLog;->mNumberPresentation:I

    .line 12
    return-void
.end method


# virtual methods
.method public getCachedName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/backup/model/CallLog;->mCachedName:Ljava/lang/String;

    return-object v0
.end method

.method public getCachedNumberLabel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/backup/model/CallLog;->mCachedNumberLabel:Ljava/lang/String;

    return-object v0
.end method

.method public getCachedNumberType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/backup/model/CallLog;->mCachedNumberType:Ljava/lang/String;

    return-object v0
.end method

.method public getDate()Ljava/lang/String;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/backup/model/CallLog;->mDate:Ljava/lang/String;

    return-object v0
.end method

.method public getDuration()Ljava/lang/String;
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/backup/model/CallLog;->mDuration:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/backup/model/CallLog;->mId:Ljava/lang/String;

    return-object v0
.end method

.method public getNew()Ljava/lang/String;
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/backup/model/CallLog;->mNew:Ljava/lang/String;

    return-object v0
.end method

.method public getNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/backup/model/CallLog;->mNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getNumberPresentation()I
    .locals 1

    .prologue
    .line 95
    iget v0, p0, Lcom/sonyericsson/android/socialphonebook/backup/model/CallLog;->mNumberPresentation:I

    return v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 119
    iget v0, p0, Lcom/sonyericsson/android/socialphonebook/backup/model/CallLog;->mType:I

    return v0
.end method

.method public setCachedName(Ljava/lang/String;)V
    .locals 0
    .param p1, "cachedName"    # Ljava/lang/String;

    .prologue
    .line 218
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/backup/model/CallLog;->mCachedName:Ljava/lang/String;

    .line 217
    return-void
.end method

.method public setCachedNumberLabel(Ljava/lang/String;)V
    .locals 0
    .param p1, "cachedNumberLabel"    # Ljava/lang/String;

    .prologue
    .line 236
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/backup/model/CallLog;->mCachedNumberLabel:Ljava/lang/String;

    .line 235
    return-void
.end method

.method public setCachedNumberType(Ljava/lang/String;)V
    .locals 0
    .param p1, "cachedNumberType"    # Ljava/lang/String;

    .prologue
    .line 227
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/backup/model/CallLog;->mCachedNumberType:Ljava/lang/String;

    .line 226
    return-void
.end method

.method public setDate(Ljava/lang/String;)V
    .locals 0
    .param p1, "date"    # Ljava/lang/String;

    .prologue
    .line 184
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/backup/model/CallLog;->mDate:Ljava/lang/String;

    .line 183
    return-void
.end method

.method public setDuration(Ljava/lang/String;)V
    .locals 0
    .param p1, "duration"    # Ljava/lang/String;

    .prologue
    .line 192
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/backup/model/CallLog;->mDuration:Ljava/lang/String;

    .line 191
    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 161
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/backup/model/CallLog;->mId:Ljava/lang/String;

    .line 160
    return-void
.end method

.method public setNew(Ljava/lang/String;)V
    .locals 0
    .param p1, "newData"    # Ljava/lang/String;

    .prologue
    .line 209
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/backup/model/CallLog;->mNew:Ljava/lang/String;

    .line 208
    return-void
.end method

.method public setNumber(Ljava/lang/String;)V
    .locals 0
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    .line 169
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/backup/model/CallLog;->mNumber:Ljava/lang/String;

    .line 168
    return-void
.end method

.method public setNumberPresentation(I)V
    .locals 0
    .param p1, "numberPresentation"    # I

    .prologue
    .line 176
    iput p1, p0, Lcom/sonyericsson/android/socialphonebook/backup/model/CallLog;->mNumberPresentation:I

    .line 175
    return-void
.end method

.method public setType(I)V
    .locals 0
    .param p1, "type"    # I

    .prologue
    .line 200
    iput p1, p0, Lcom/sonyericsson/android/socialphonebook/backup/model/CallLog;->mType:I

    .line 199
    return-void
.end method
