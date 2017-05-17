.class final Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder$IndexerImpl;
.super Ljava/lang/Object;
.source "IndexBuilder.java"

# interfaces
.implements Lcom/sonyericsson/android/socialphonebook/cursor/Indexer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "IndexerImpl"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder$IndexerImpl$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/sonyericsson/android/socialphonebook/cursor/Indexer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mBoxLabels:[Ljava/lang/String;

.field private mEntryCount:I

.field private mInitialPosition:I

.field private mItemCount:I

.field private mLabels:[Ljava/lang/String;

.field private mMode:I

.field private mMoveDownPositions:[I

.field private mMoveUpPositions:[I

.field private mSectionFirstPositions:[I

.field private mSectionIndexes:[I

.field private mSeparatorPositions:[I


# direct methods
.method static synthetic -get0(Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder$IndexerImpl;)[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder$IndexerImpl;->mBoxLabels:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get1(Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder$IndexerImpl;)I
    .locals 1

    iget v0, p0, Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder$IndexerImpl;->mEntryCount:I

    return v0
.end method

.method static synthetic -get2(Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder$IndexerImpl;)I
    .locals 1

    iget v0, p0, Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder$IndexerImpl;->mItemCount:I

    return v0
.end method

.method static synthetic -get3(Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder$IndexerImpl;)[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder$IndexerImpl;->mLabels:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get4(Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder$IndexerImpl;)[I
    .locals 1

    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder$IndexerImpl;->mMoveDownPositions:[I

    return-object v0
.end method

.method static synthetic -get5(Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder$IndexerImpl;)[I
    .locals 1

    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder$IndexerImpl;->mMoveUpPositions:[I

    return-object v0
.end method

.method static synthetic -get6(Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder$IndexerImpl;)[I
    .locals 1

    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder$IndexerImpl;->mSectionFirstPositions:[I

    return-object v0
.end method

.method static synthetic -get7(Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder$IndexerImpl;)[I
    .locals 1

    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder$IndexerImpl;->mSectionIndexes:[I

    return-object v0
.end method

.method static synthetic -get8(Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder$IndexerImpl;)[I
    .locals 1

    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder$IndexerImpl;->mSeparatorPositions:[I

    return-object v0
.end method

.method static synthetic -set0(Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder$IndexerImpl;[Ljava/lang/String;)[Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder$IndexerImpl;->mBoxLabels:[Ljava/lang/String;

    return-object p1
.end method

.method static synthetic -set1(Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder$IndexerImpl;I)I
    .locals 0

    iput p1, p0, Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder$IndexerImpl;->mEntryCount:I

    return p1
.end method

.method static synthetic -set10(Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder$IndexerImpl;[I)[I
    .locals 0

    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder$IndexerImpl;->mSeparatorPositions:[I

    return-object p1
.end method

.method static synthetic -set2(Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder$IndexerImpl;I)I
    .locals 0

    iput p1, p0, Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder$IndexerImpl;->mInitialPosition:I

    return p1
.end method

.method static synthetic -set3(Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder$IndexerImpl;I)I
    .locals 0

    iput p1, p0, Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder$IndexerImpl;->mItemCount:I

    return p1
.end method

.method static synthetic -set4(Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder$IndexerImpl;[Ljava/lang/String;)[Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder$IndexerImpl;->mLabels:[Ljava/lang/String;

    return-object p1
.end method

.method static synthetic -set5(Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder$IndexerImpl;I)I
    .locals 0

    iput p1, p0, Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder$IndexerImpl;->mMode:I

    return p1
.end method

.method static synthetic -set6(Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder$IndexerImpl;[I)[I
    .locals 0

    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder$IndexerImpl;->mMoveDownPositions:[I

    return-object p1
.end method

.method static synthetic -set7(Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder$IndexerImpl;[I)[I
    .locals 0

    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder$IndexerImpl;->mMoveUpPositions:[I

    return-object p1
.end method

.method static synthetic -set8(Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder$IndexerImpl;[I)[I
    .locals 0

    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder$IndexerImpl;->mSectionFirstPositions:[I

    return-object p1
.end method

.method static synthetic -set9(Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder$IndexerImpl;[I)[I
    .locals 0

    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder$IndexerImpl;->mSectionIndexes:[I

    return-object p1
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1407
    new-instance v0, Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder$IndexerImpl$1;

    invoke-direct {v0}, Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder$IndexerImpl$1;-><init>()V

    sput-object v0, Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder$IndexerImpl;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1088
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1091
    iput v0, p0, Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder$IndexerImpl;->mItemCount:I

    .line 1093
    iput v0, p0, Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder$IndexerImpl;->mEntryCount:I

    .line 1119
    iput v0, p0, Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder$IndexerImpl;->mMode:I

    .line 1122
    iput v0, p0, Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder$IndexerImpl;->mInitialPosition:I

    .line 1128
    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder$IndexerImpl;)V
    .locals 0

    .prologue
    invoke-direct {p0}, Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder$IndexerImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 1371
    const/4 v0, 0x0

    return v0
.end method

.method public getAllSeparatorTexts()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 1341
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder$IndexerImpl;->mLabels:[Ljava/lang/String;

    return-object v0
.end method

.method public getCurrentMode()I
    .locals 1

    .prologue
    .line 1137
    iget v0, p0, Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder$IndexerImpl;->mMode:I

    return v0
.end method

.method public getEntryCount()I
    .locals 1

    .prologue
    .line 1280
    iget v0, p0, Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder$IndexerImpl;->mEntryCount:I

    return v0
.end method

.method public getIndexBoxText(I)Ljava/lang/String;
    .locals 1
    .param p1, "aSectionIndex"    # I

    .prologue
    .line 1195
    iget v0, p0, Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder$IndexerImpl;->mMode:I

    if-nez v0, :cond_2

    .line 1196
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder$IndexerImpl;->mBoxLabels:[Ljava/lang/String;

    array-length v0, v0

    if-lt p1, v0, :cond_1

    .line 1197
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 1199
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder$IndexerImpl;->mBoxLabels:[Ljava/lang/String;

    aget-object v0, v0, p1

    return-object v0

    .line 1201
    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method

.method public getIndexBoxTextMaxLength()I
    .locals 3

    .prologue
    .line 1211
    const/4 v1, 0x0

    .line 1212
    .local v1, "max":I
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder$IndexerImpl;->mBoxLabels:[Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 1213
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder$IndexerImpl;->mBoxLabels:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 1214
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder$IndexerImpl;->mBoxLabels:[Ljava/lang/String;

    aget-object v2, v2, v0

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder$IndexerImpl;->mBoxLabels:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 1215
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder$IndexerImpl;->mBoxLabels:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v1

    .line 1213
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1219
    .end local v0    # "i":I
    :cond_1
    return v1
.end method

.method public getInitialPosition()I
    .locals 1

    .prologue
    .line 1145
    iget v0, p0, Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder$IndexerImpl;->mInitialPosition:I

    return v0
.end method

.method public getItemCount()I
    .locals 1

    .prologue
    .line 1271
    iget v0, p0, Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder$IndexerImpl;->mItemCount:I

    return v0
.end method

.method public getMovePosition(II)I
    .locals 1
    .param p1, "aSectionIndex"    # I
    .param p2, "aFirstVisiblePosition"    # I

    .prologue
    .line 1295
    iget v0, p0, Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder$IndexerImpl;->mMode:I

    if-nez v0, :cond_3

    .line 1296
    if-ltz p1, :cond_0

    .line 1297
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder$IndexerImpl;->mMoveUpPositions:[I

    array-length v0, v0

    if-lt p1, v0, :cond_1

    .line 1298
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 1300
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder$IndexerImpl;->mMoveUpPositions:[I

    aget v0, v0, p1

    if-gt p2, v0, :cond_2

    .line 1302
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder$IndexerImpl;->mMoveDownPositions:[I

    aget v0, v0, p1

    return v0

    .line 1305
    :cond_2
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder$IndexerImpl;->mMoveUpPositions:[I

    aget v0, v0, p1

    return v0

    .line 1308
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public getMovePosition(IZ)I
    .locals 1
    .param p1, "aSectionIndex"    # I
    .param p2, "aScrollUp"    # Z

    .prologue
    .line 1322
    iget v0, p0, Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder$IndexerImpl;->mMode:I

    if-nez v0, :cond_3

    .line 1323
    if-ltz p1, :cond_0

    .line 1324
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder$IndexerImpl;->mMoveUpPositions:[I

    array-length v0, v0

    if-lt p1, v0, :cond_1

    .line 1325
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 1327
    :cond_1
    if-eqz p2, :cond_2

    .line 1329
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder$IndexerImpl;->mMoveUpPositions:[I

    aget v0, v0, p1

    return v0

    .line 1332
    :cond_2
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder$IndexerImpl;->mMoveDownPositions:[I

    aget v0, v0, p1

    return v0

    .line 1335
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public getPositionForSection(I)I
    .locals 1
    .param p1, "section"    # I

    .prologue
    .line 1351
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder$IndexerImpl;->mSeparatorPositions:[I

    array-length v0, v0

    if-lt p1, v0, :cond_1

    .line 1352
    :cond_0
    const/4 v0, -0x1

    return v0

    .line 1355
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder$IndexerImpl;->mSeparatorPositions:[I

    aget v0, v0, p1

    return v0
.end method

.method public getSectionForPosition(I)I
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 1360
    if-ltz p1, :cond_0

    iget v1, p0, Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder$IndexerImpl;->mItemCount:I

    if-lt p1, v1, :cond_1

    .line 1361
    :cond_0
    const/4 v1, -0x1

    return v1

    .line 1364
    :cond_1
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder$IndexerImpl;->mSeparatorPositions:[I

    invoke-static {v1, p1}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v0

    .line 1366
    .local v0, "index":I
    if-ltz v0, :cond_2

    .end local v0    # "index":I
    :goto_0
    return v0

    .restart local v0    # "index":I
    :cond_2
    neg-int v1, v0

    add-int/lit8 v0, v1, -0x2

    goto :goto_0
.end method

.method public getSectionIndexes(II[I)I
    .locals 12
    .param p1, "aFirstPosition"    # I
    .param p2, "aCount"    # I
    .param p3, "aArea"    # [I

    .prologue
    const/4 v11, 0x0

    .line 1233
    iget v9, p0, Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder$IndexerImpl;->mMode:I

    const/4 v10, 0x2

    if-eq v9, v10, :cond_0

    if-gtz p2, :cond_1

    .line 1234
    :cond_0
    return v11

    .line 1236
    :cond_1
    move v3, p1

    .line 1237
    .local v3, "firstPosition":I
    move v2, p2

    .line 1238
    .local v2, "count":I
    iget v9, p0, Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder$IndexerImpl;->mInitialPosition:I

    if-ge p1, v9, :cond_3

    .line 1239
    iget v9, p0, Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder$IndexerImpl;->mInitialPosition:I

    sub-int/2addr v9, p1

    if-gt p2, v9, :cond_2

    .line 1240
    return v11

    .line 1242
    :cond_2
    iget v3, p0, Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder$IndexerImpl;->mInitialPosition:I

    .line 1243
    iget v9, p0, Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder$IndexerImpl;->mInitialPosition:I

    sub-int/2addr v9, p1

    sub-int/2addr v2, v9

    .line 1246
    :cond_3
    iget-object v7, p0, Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder$IndexerImpl;->mSectionFirstPositions:[I

    .line 1247
    .local v7, "positions":[I
    invoke-static {v7, v3}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v5

    .line 1248
    .local v5, "idx":I
    if-gez v5, :cond_4

    .line 1249
    neg-int v9, v5

    add-int/lit8 v9, v9, -0x1

    add-int/lit8 v5, v9, -0x1

    .line 1250
    if-gez v5, :cond_4

    .line 1251
    return v11

    .line 1254
    :cond_4
    add-int v9, v3, v2

    add-int/lit8 v6, v9, -0x1

    .line 1255
    .local v6, "lastPosition":I
    const/4 v0, 0x0

    .line 1256
    .local v0, "cnt":I
    move v4, v5

    .local v4, "i":I
    array-length v8, v7

    .local v8, "size":I
    move v1, v0

    .end local v0    # "cnt":I
    .local v1, "cnt":I
    :goto_0
    if-ge v4, v8, :cond_5

    .line 1257
    aget v9, v7, v4

    if-le v9, v6, :cond_6

    .line 1262
    :cond_5
    return v1

    .line 1260
    :cond_6
    add-int/lit8 v0, v1, 0x1

    .end local v1    # "cnt":I
    .restart local v0    # "cnt":I
    iget-object v9, p0, Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder$IndexerImpl;->mSectionIndexes:[I

    aget v9, v9, v4

    aput v9, p3, v1

    .line 1256
    add-int/lit8 v4, v4, 0x1

    move v1, v0

    .end local v0    # "cnt":I
    .restart local v1    # "cnt":I
    goto :goto_0
.end method

.method public getSections()[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1346
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder$IndexerImpl;->mLabels:[Ljava/lang/String;

    return-object v0
.end method

.method public getSeparatorCount()I
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1154
    iget v0, p0, Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder$IndexerImpl;->mMode:I

    if-nez v0, :cond_0

    .line 1155
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder$IndexerImpl;->mSeparatorPositions:[I

    array-length v0, v0

    return v0

    .line 1157
    :cond_0
    return v1
.end method

.method public getSeparatorText(I)Ljava/lang/String;
    .locals 3
    .param p1, "aPosition"    # I

    .prologue
    .line 1169
    iget v1, p0, Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder$IndexerImpl;->mMode:I

    if-nez v1, :cond_4

    .line 1170
    iget v1, p0, Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder$IndexerImpl;->mInitialPosition:I

    if-lt p1, v1, :cond_0

    .line 1171
    iget v1, p0, Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder$IndexerImpl;->mItemCount:I

    iget v2, p0, Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder$IndexerImpl;->mInitialPosition:I

    add-int/2addr v1, v2

    if-lt p1, v1, :cond_1

    .line 1172
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 1175
    :cond_1
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder$IndexerImpl;->mSeparatorPositions:[I

    invoke-static {v1, p1}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v0

    .line 1176
    .local v0, "index":I
    if-gez v0, :cond_2

    .line 1177
    neg-int v1, v0

    add-int/lit8 v1, v1, -0x1

    add-int/lit8 v0, v1, -0x1

    .line 1179
    :cond_2
    if-gez v0, :cond_3

    .line 1180
    const/4 v0, 0x0

    .line 1182
    :cond_3
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder$IndexerImpl;->mLabels:[Ljava/lang/String;

    aget-object v1, v1, v0

    return-object v1

    .line 1184
    .end local v0    # "index":I
    :cond_4
    const/4 v1, 0x0

    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 1391
    iget v0, p0, Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder$IndexerImpl;->mMode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1392
    iget v0, p0, Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder$IndexerImpl;->mInitialPosition:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1393
    iget v0, p0, Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder$IndexerImpl;->mEntryCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1394
    iget v0, p0, Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder$IndexerImpl;->mItemCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1396
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder$IndexerImpl;->mMoveUpPositions:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 1397
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder$IndexerImpl;->mMoveDownPositions:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 1398
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder$IndexerImpl;->mSeparatorPositions:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 1399
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder$IndexerImpl;->mSectionFirstPositions:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 1400
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder$IndexerImpl;->mSectionIndexes:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 1402
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder$IndexerImpl;->mBoxLabels:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 1403
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder$IndexerImpl;->mLabels:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 1390
    return-void
.end method
