.class public Lcom/sonyericsson/android/socialphonebook/calllog/CallLogMergeCursor$CallLogHelper;
.super Ljava/lang/Object;
.source "CallLogMergeCursor.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/socialphonebook/calllog/CallLogMergeCursor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CallLogHelper"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/socialphonebook/calllog/CallLogMergeCursor$CallLogHelper$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/sonyericsson/android/socialphonebook/calllog/CallLogMergeCursor$CallLogHelper;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mIds:[I

.field private mNames:[Ljava/lang/String;

.field private mNumberLabels:[Ljava/lang/String;

.field private mNumbers:[Ljava/lang/String;

.field private mPresentations:[I

.field private mSize:I

.field private mTypes:[I

.field private mVoicemailIsRead:I

.field private mVoicemailUri:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 322
    new-instance v0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogMergeCursor$CallLogHelper$1;

    invoke-direct {v0}, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogMergeCursor$CallLogHelper$1;-><init>()V

    .line 321
    sput-object v0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogMergeCursor$CallLogHelper;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 170
    return-void
.end method

.method public constructor <init>()V
    .locals 0
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 210
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 213
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 214
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogMergeCursor$CallLogHelper;->mSize:I

    .line 215
    iget v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogMergeCursor$CallLogHelper;->mSize:I

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogMergeCursor$CallLogHelper;->mIds:[I

    .line 216
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogMergeCursor$CallLogHelper;->mIds:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readIntArray([I)V

    .line 217
    iget v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogMergeCursor$CallLogHelper;->mSize:I

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogMergeCursor$CallLogHelper;->mTypes:[I

    .line 218
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogMergeCursor$CallLogHelper;->mTypes:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readIntArray([I)V

    .line 219
    iget v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogMergeCursor$CallLogHelper;->mSize:I

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogMergeCursor$CallLogHelper;->mPresentations:[I

    .line 220
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogMergeCursor$CallLogHelper;->mPresentations:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readIntArray([I)V

    .line 221
    iget v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogMergeCursor$CallLogHelper;->mSize:I

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogMergeCursor$CallLogHelper;->mNames:[Ljava/lang/String;

    .line 222
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogMergeCursor$CallLogHelper;->mNames:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readStringArray([Ljava/lang/String;)V

    .line 223
    iget v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogMergeCursor$CallLogHelper;->mSize:I

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogMergeCursor$CallLogHelper;->mNumbers:[Ljava/lang/String;

    .line 224
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogMergeCursor$CallLogHelper;->mNumbers:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readStringArray([Ljava/lang/String;)V

    .line 225
    iget v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogMergeCursor$CallLogHelper;->mSize:I

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogMergeCursor$CallLogHelper;->mNumberLabels:[Ljava/lang/String;

    .line 226
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogMergeCursor$CallLogHelper;->mNumberLabels:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readStringArray([Ljava/lang/String;)V

    .line 227
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogMergeCursor$CallLogHelper;->mVoicemailUri:Ljava/lang/String;

    .line 228
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogMergeCursor$CallLogHelper;->mVoicemailIsRead:I

    .line 213
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/sonyericsson/android/socialphonebook/calllog/CallLogMergeCursor$CallLogHelper;)V
    .locals 0
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogMergeCursor$CallLogHelper;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/sonyericsson/android/socialphonebook/calllog/CallLogMergeCursor$LogItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "items":Ljava/util/List;, "Ljava/util/List<Lcom/sonyericsson/android/socialphonebook/calllog/CallLogMergeCursor$LogItem;>;"
    const/4 v4, 0x1

    .line 181
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 182
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    iput v2, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogMergeCursor$CallLogHelper;->mSize:I

    .line 183
    iget v2, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogMergeCursor$CallLogHelper;->mSize:I

    new-array v2, v2, [I

    iput-object v2, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogMergeCursor$CallLogHelper;->mIds:[I

    .line 184
    iget v2, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogMergeCursor$CallLogHelper;->mSize:I

    new-array v2, v2, [I

    iput-object v2, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogMergeCursor$CallLogHelper;->mPresentations:[I

    .line 185
    iget v2, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogMergeCursor$CallLogHelper;->mSize:I

    new-array v2, v2, [I

    iput-object v2, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogMergeCursor$CallLogHelper;->mTypes:[I

    .line 186
    iget v2, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogMergeCursor$CallLogHelper;->mSize:I

    new-array v2, v2, [Ljava/lang/String;

    iput-object v2, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogMergeCursor$CallLogHelper;->mNames:[Ljava/lang/String;

    .line 187
    iget v2, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogMergeCursor$CallLogHelper;->mSize:I

    new-array v2, v2, [Ljava/lang/String;

    iput-object v2, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogMergeCursor$CallLogHelper;->mNumbers:[Ljava/lang/String;

    .line 188
    iget v2, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogMergeCursor$CallLogHelper;->mSize:I

    new-array v2, v2, [Ljava/lang/String;

    iput-object v2, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogMergeCursor$CallLogHelper;->mNumberLabels:[Ljava/lang/String;

    .line 190
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v2, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogMergeCursor$CallLogHelper;->mSize:I

    if-ge v0, v2, :cond_3

    .line 191
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogMergeCursor$LogItem;

    .line 192
    .local v1, "item":Lcom/sonyericsson/android/socialphonebook/calllog/CallLogMergeCursor$LogItem;
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogMergeCursor$CallLogHelper;->mIds:[I

    iget v3, v1, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogMergeCursor$LogItem;->id:I

    aput v3, v2, v0

    .line 193
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogMergeCursor$CallLogHelper;->mTypes:[I

    iget v3, v1, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogMergeCursor$LogItem;->type:I

    aput v3, v2, v0

    .line 194
    iget-object v3, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogMergeCursor$CallLogHelper;->mNames:[Ljava/lang/String;

    iget-object v2, v1, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogMergeCursor$LogItem;->name:Ljava/lang/String;

    if-eqz v2, :cond_2

    iget-object v2, v1, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogMergeCursor$LogItem;->name:Ljava/lang/String;

    :goto_1
    aput-object v2, v3, v0

    .line 195
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogMergeCursor$CallLogHelper;->mNumbers:[Ljava/lang/String;

    iget-object v3, v1, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogMergeCursor$LogItem;->number:Ljava/lang/String;

    aput-object v3, v2, v0

    .line 196
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogMergeCursor$CallLogHelper;->mPresentations:[I

    iget v3, v1, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogMergeCursor$LogItem;->presentation:I

    aput v3, v2, v0

    .line 197
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogMergeCursor$CallLogHelper;->mNumberLabels:[Ljava/lang/String;

    iget-object v3, v1, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogMergeCursor$LogItem;->numberLabel:Ljava/lang/String;

    aput-object v3, v2, v0

    .line 199
    iget v2, v1, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogMergeCursor$LogItem;->type:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_0

    .line 200
    iget-object v2, v1, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogMergeCursor$LogItem;->voicemailUri:Ljava/lang/String;

    iput-object v2, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogMergeCursor$CallLogHelper;->mVoicemailUri:Ljava/lang/String;

    .line 203
    :cond_0
    iget v2, v1, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogMergeCursor$LogItem;->isRead:I

    if-ne v2, v4, :cond_1

    .line 204
    iput v4, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogMergeCursor$CallLogHelper;->mVoicemailIsRead:I

    .line 190
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 194
    :cond_2
    iget-object v2, v1, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogMergeCursor$LogItem;->number:Ljava/lang/String;

    goto :goto_1

    .line 181
    .end local v1    # "item":Lcom/sonyericsson/android/socialphonebook/calllog/CallLogMergeCursor$LogItem;
    :cond_3
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 233
    const/4 v0, 0x0

    return v0
.end method

.method public getIds()[I
    .locals 1

    .prologue
    .line 258
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogMergeCursor$CallLogHelper;->mIds:[I

    return-object v0
.end method

.method public getNames()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 270
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogMergeCursor$CallLogHelper;->mNames:[Ljava/lang/String;

    return-object v0
.end method

.method public getNumberLabels()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 286
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogMergeCursor$CallLogHelper;->mNumberLabels:[Ljava/lang/String;

    return-object v0
.end method

.method public getNumbers()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 278
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogMergeCursor$CallLogHelper;->mNumbers:[Ljava/lang/String;

    return-object v0
.end method

.method public getPresentations()[I
    .locals 1

    .prologue
    .line 298
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogMergeCursor$CallLogHelper;->mPresentations:[I

    return-object v0
.end method

.method public getSize()I
    .locals 1

    .prologue
    .line 250
    iget v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogMergeCursor$CallLogHelper;->mSize:I

    return v0
.end method

.method public getTypes()[I
    .locals 1

    .prologue
    .line 290
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogMergeCursor$CallLogHelper;->mTypes:[I

    return-object v0
.end method

.method public getVoicemailUri()Ljava/lang/String;
    .locals 1

    .prologue
    .line 318
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogMergeCursor$CallLogHelper;->mVoicemailUri:Ljava/lang/String;

    return-object v0
.end method

.method public isVoicemailIsRead()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 306
    iget v1, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogMergeCursor$CallLogHelper;->mVoicemailIsRead:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setIds([I)V
    .locals 0
    .param p1, "ids"    # [I

    .prologue
    .line 262
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogMergeCursor$CallLogHelper;->mIds:[I

    .line 261
    return-void
.end method

.method public setNames([Ljava/lang/String;)V
    .locals 0
    .param p1, "names"    # [Ljava/lang/String;

    .prologue
    .line 266
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogMergeCursor$CallLogHelper;->mNames:[Ljava/lang/String;

    .line 265
    return-void
.end method

.method public setNumberLabels([Ljava/lang/String;)V
    .locals 0
    .param p1, "numberLabels"    # [Ljava/lang/String;

    .prologue
    .line 282
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogMergeCursor$CallLogHelper;->mNumberLabels:[Ljava/lang/String;

    .line 281
    return-void
.end method

.method public setNumbers([Ljava/lang/String;)V
    .locals 0
    .param p1, "numbers"    # [Ljava/lang/String;

    .prologue
    .line 274
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogMergeCursor$CallLogHelper;->mNumbers:[Ljava/lang/String;

    .line 273
    return-void
.end method

.method public setPresentations([I)V
    .locals 0
    .param p1, "presentations"    # [I

    .prologue
    .line 302
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogMergeCursor$CallLogHelper;->mPresentations:[I

    .line 301
    return-void
.end method

.method public setSize(I)V
    .locals 0
    .param p1, "size"    # I

    .prologue
    .line 254
    iput p1, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogMergeCursor$CallLogHelper;->mSize:I

    .line 253
    return-void
.end method

.method public setTypes([I)V
    .locals 0
    .param p1, "types"    # [I

    .prologue
    .line 294
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogMergeCursor$CallLogHelper;->mTypes:[I

    .line 293
    return-void
.end method

.method public setVoicemailIsRead(I)V
    .locals 0
    .param p1, "voicemailIsRead"    # I

    .prologue
    .line 310
    iput p1, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogMergeCursor$CallLogHelper;->mVoicemailIsRead:I

    .line 309
    return-void
.end method

.method public setVoicemailUri(Ljava/lang/String;)V
    .locals 0
    .param p1, "voicemailUri"    # Ljava/lang/String;

    .prologue
    .line 314
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogMergeCursor$CallLogHelper;->mVoicemailUri:Ljava/lang/String;

    .line 313
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 238
    iget v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogMergeCursor$CallLogHelper;->mSize:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 239
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogMergeCursor$CallLogHelper;->mIds:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 240
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogMergeCursor$CallLogHelper;->mTypes:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 241
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogMergeCursor$CallLogHelper;->mPresentations:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 242
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogMergeCursor$CallLogHelper;->mNames:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 243
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogMergeCursor$CallLogHelper;->mNumbers:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 244
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogMergeCursor$CallLogHelper;->mNumberLabels:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 245
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogMergeCursor$CallLogHelper;->mVoicemailUri:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 246
    iget v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogMergeCursor$CallLogHelper;->mVoicemailIsRead:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 237
    return-void
.end method
