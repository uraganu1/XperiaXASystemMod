.class Lcom/sonyericsson/conversations/ui/util/SortedMergeCursor$SortedData;
.super Ljava/lang/Object;
.source "SortedMergeCursor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/conversations/ui/util/SortedMergeCursor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SortedData"
.end annotation


# instance fields
.field private mCursor:Landroid/database/Cursor;

.field private mPosition:I

.field private mRealId:J


# direct methods
.method static synthetic -wrap0(Lcom/sonyericsson/conversations/ui/util/SortedMergeCursor$SortedData;)Landroid/database/Cursor;
    .locals 1

    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/util/SortedMergeCursor$SortedData;->getCursorForData()Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lcom/sonyericsson/conversations/ui/util/SortedMergeCursor$SortedData;)I
    .locals 1

    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/util/SortedMergeCursor$SortedData;->getPositionInCursor()I

    move-result v0

    return v0
.end method

.method static synthetic -wrap2(Lcom/sonyericsson/conversations/ui/util/SortedMergeCursor$SortedData;)J
    .locals 2

    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/util/SortedMergeCursor$SortedData;->getRealId()J

    move-result-wide v0

    return-wide v0
.end method

.method public constructor <init>(Landroid/database/Cursor;I)V
    .locals 2
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "position"    # I

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/util/SortedMergeCursor$SortedData;->mCursor:Landroid/database/Cursor;

    .line 57
    iput p2, p0, Lcom/sonyericsson/conversations/ui/util/SortedMergeCursor$SortedData;->mPosition:I

    .line 58
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/sonyericsson/conversations/ui/util/SortedMergeCursor$SortedData;->mRealId:J

    .line 55
    return-void
.end method

.method private getCursorForData()Landroid/database/Cursor;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/util/SortedMergeCursor$SortedData;->mCursor:Landroid/database/Cursor;

    return-object v0
.end method

.method private getPositionInCursor()I
    .locals 1

    .prologue
    .line 70
    iget v0, p0, Lcom/sonyericsson/conversations/ui/util/SortedMergeCursor$SortedData;->mPosition:I

    return v0
.end method

.method private getRealId()J
    .locals 2

    .prologue
    .line 74
    iget-wide v0, p0, Lcom/sonyericsson/conversations/ui/util/SortedMergeCursor$SortedData;->mRealId:J

    return-wide v0
.end method


# virtual methods
.method public setRealId(J)V
    .locals 1
    .param p1, "realId"    # J

    .prologue
    .line 62
    iput-wide p1, p0, Lcom/sonyericsson/conversations/ui/util/SortedMergeCursor$SortedData;->mRealId:J

    .line 61
    return-void
.end method
