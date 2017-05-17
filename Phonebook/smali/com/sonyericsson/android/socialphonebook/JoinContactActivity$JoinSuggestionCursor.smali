.class final Lcom/sonyericsson/android/socialphonebook/JoinContactActivity$JoinSuggestionCursor;
.super Landroid/database/CursorWrapper;
.source "JoinContactActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/socialphonebook/JoinContactActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "JoinSuggestionCursor"
.end annotation


# instance fields
.field private mContactsCursor:Landroid/database/Cursor;

.field private mFilterFlag:Z

.field private mSuggestionsCursor:Landroid/database/Cursor;


# direct methods
.method static synthetic -get0(Lcom/sonyericsson/android/socialphonebook/JoinContactActivity$JoinSuggestionCursor;)Landroid/database/Cursor;
    .locals 1

    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/JoinContactActivity$JoinSuggestionCursor;->mContactsCursor:Landroid/database/Cursor;

    return-object v0
.end method

.method static synthetic -get1(Lcom/sonyericsson/android/socialphonebook/JoinContactActivity$JoinSuggestionCursor;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sonyericsson/android/socialphonebook/JoinContactActivity$JoinSuggestionCursor;->mFilterFlag:Z

    return v0
.end method

.method static synthetic -get2(Lcom/sonyericsson/android/socialphonebook/JoinContactActivity$JoinSuggestionCursor;)Landroid/database/Cursor;
    .locals 1

    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/JoinContactActivity$JoinSuggestionCursor;->mSuggestionsCursor:Landroid/database/Cursor;

    return-object v0
.end method

.method static synthetic -set0(Lcom/sonyericsson/android/socialphonebook/JoinContactActivity$JoinSuggestionCursor;Landroid/database/Cursor;)Landroid/database/Cursor;
    .locals 0

    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/JoinContactActivity$JoinSuggestionCursor;->mContactsCursor:Landroid/database/Cursor;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/sonyericsson/android/socialphonebook/JoinContactActivity$JoinSuggestionCursor;)I
    .locals 1

    invoke-direct {p0}, Lcom/sonyericsson/android/socialphonebook/JoinContactActivity$JoinSuggestionCursor;->getSuggestionsCursorCount()I

    move-result v0

    return v0
.end method

.method private constructor <init>(Landroid/database/Cursor;)V
    .locals 2
    .param p1, "aSuggestionCursor"    # Landroid/database/Cursor;

    .prologue
    .line 489
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/sonyericsson/android/socialphonebook/JoinContactActivity$JoinSuggestionCursor;-><init>(Landroid/database/Cursor;Landroid/database/Cursor;Z)V

    .line 488
    return-void
.end method

.method private constructor <init>(Landroid/database/Cursor;Landroid/database/Cursor;)V
    .locals 1
    .param p1, "aSuggestionCursor"    # Landroid/database/Cursor;
    .param p2, "aContactCursor"    # Landroid/database/Cursor;

    .prologue
    .line 499
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/sonyericsson/android/socialphonebook/JoinContactActivity$JoinSuggestionCursor;-><init>(Landroid/database/Cursor;Landroid/database/Cursor;Z)V

    .line 498
    return-void
.end method

.method private constructor <init>(Landroid/database/Cursor;Landroid/database/Cursor;Z)V
    .locals 0
    .param p1, "aSuggestionCursor"    # Landroid/database/Cursor;
    .param p2, "aContactCursor"    # Landroid/database/Cursor;
    .param p3, "aFilterFlag"    # Z

    .prologue
    .line 510
    invoke-direct {p0, p1}, Landroid/database/CursorWrapper;-><init>(Landroid/database/Cursor;)V

    .line 511
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/JoinContactActivity$JoinSuggestionCursor;->mSuggestionsCursor:Landroid/database/Cursor;

    .line 512
    iput-object p2, p0, Lcom/sonyericsson/android/socialphonebook/JoinContactActivity$JoinSuggestionCursor;->mContactsCursor:Landroid/database/Cursor;

    .line 513
    iput-boolean p3, p0, Lcom/sonyericsson/android/socialphonebook/JoinContactActivity$JoinSuggestionCursor;->mFilterFlag:Z

    .line 509
    return-void
.end method

.method synthetic constructor <init>(Landroid/database/Cursor;Landroid/database/Cursor;ZLcom/sonyericsson/android/socialphonebook/JoinContactActivity$JoinSuggestionCursor;)V
    .locals 0
    .param p1, "aSuggestionCursor"    # Landroid/database/Cursor;
    .param p2, "aContactCursor"    # Landroid/database/Cursor;
    .param p3, "aFilterFlag"    # Z

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/sonyericsson/android/socialphonebook/JoinContactActivity$JoinSuggestionCursor;-><init>(Landroid/database/Cursor;Landroid/database/Cursor;Z)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/database/Cursor;Lcom/sonyericsson/android/socialphonebook/JoinContactActivity$JoinSuggestionCursor;)V
    .locals 0
    .param p1, "aSuggestionCursor"    # Landroid/database/Cursor;

    .prologue
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/socialphonebook/JoinContactActivity$JoinSuggestionCursor;-><init>(Landroid/database/Cursor;)V

    return-void
.end method

.method private getSuggestionsCursorCount()I
    .locals 1

    .prologue
    .line 521
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/JoinContactActivity$JoinSuggestionCursor;->mSuggestionsCursor:Landroid/database/Cursor;

    if-nez v0, :cond_0

    .line 522
    const/4 v0, 0x0

    return v0

    .line 524
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/JoinContactActivity$JoinSuggestionCursor;->mSuggestionsCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    return v0
.end method


# virtual methods
.method public close()V
    .locals 1

    .prologue
    .line 476
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/JoinContactActivity$JoinSuggestionCursor;->mSuggestionsCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    .line 477
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/JoinContactActivity$JoinSuggestionCursor;->mSuggestionsCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 479
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/JoinContactActivity$JoinSuggestionCursor;->mContactsCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_1

    .line 480
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/JoinContactActivity$JoinSuggestionCursor;->mContactsCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 475
    :cond_1
    return-void
.end method
