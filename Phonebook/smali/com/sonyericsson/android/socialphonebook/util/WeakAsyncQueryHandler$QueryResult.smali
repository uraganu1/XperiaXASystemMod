.class public final Lcom/sonyericsson/android/socialphonebook/util/WeakAsyncQueryHandler$QueryResult;
.super Ljava/lang/Object;
.source "WeakAsyncQueryHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/socialphonebook/util/WeakAsyncQueryHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "QueryResult"
.end annotation


# instance fields
.field private final mCookie:Ljava/lang/Object;

.field private final mCursor:Landroid/database/Cursor;


# direct methods
.method static synthetic -get0(Lcom/sonyericsson/android/socialphonebook/util/WeakAsyncQueryHandler$QueryResult;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/util/WeakAsyncQueryHandler$QueryResult;->mCookie:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic -get1(Lcom/sonyericsson/android/socialphonebook/util/WeakAsyncQueryHandler$QueryResult;)Landroid/database/Cursor;
    .locals 1

    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/util/WeakAsyncQueryHandler$QueryResult;->mCursor:Landroid/database/Cursor;

    return-object v0
.end method

.method public constructor <init>(Ljava/lang/Object;Landroid/database/Cursor;)V
    .locals 0
    .param p1, "aCookie"    # Ljava/lang/Object;
    .param p2, "aCusror"    # Landroid/database/Cursor;

    .prologue
    .line 69
    .local p0, "this":Lcom/sonyericsson/android/socialphonebook/util/WeakAsyncQueryHandler$QueryResult;, "Lcom/sonyericsson/android/socialphonebook/util/WeakAsyncQueryHandler<TWeakTarget;>.QueryResult;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/util/WeakAsyncQueryHandler$QueryResult;->mCookie:Ljava/lang/Object;

    .line 71
    iput-object p2, p0, Lcom/sonyericsson/android/socialphonebook/util/WeakAsyncQueryHandler$QueryResult;->mCursor:Landroid/database/Cursor;

    .line 69
    return-void
.end method
