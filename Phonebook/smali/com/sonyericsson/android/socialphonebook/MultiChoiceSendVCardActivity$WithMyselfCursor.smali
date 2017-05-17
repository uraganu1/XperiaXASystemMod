.class Lcom/sonyericsson/android/socialphonebook/MultiChoiceSendVCardActivity$WithMyselfCursor;
.super Landroid/database/CursorWrapper;
.source "MultiChoiceSendVCardActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/socialphonebook/MultiChoiceSendVCardActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "WithMyselfCursor"
.end annotation


# instance fields
.field private mContactsCursor:Landroid/database/Cursor;

.field private mMyselfCursor:Landroid/database/Cursor;


# direct methods
.method static synthetic -get0(Lcom/sonyericsson/android/socialphonebook/MultiChoiceSendVCardActivity$WithMyselfCursor;)Landroid/database/Cursor;
    .locals 1

    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/MultiChoiceSendVCardActivity$WithMyselfCursor;->mContactsCursor:Landroid/database/Cursor;

    return-object v0
.end method

.method static synthetic -get1(Lcom/sonyericsson/android/socialphonebook/MultiChoiceSendVCardActivity$WithMyselfCursor;)Landroid/database/Cursor;
    .locals 1

    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/MultiChoiceSendVCardActivity$WithMyselfCursor;->mMyselfCursor:Landroid/database/Cursor;

    return-object v0
.end method

.method static synthetic -set0(Lcom/sonyericsson/android/socialphonebook/MultiChoiceSendVCardActivity$WithMyselfCursor;Landroid/database/Cursor;)Landroid/database/Cursor;
    .locals 0

    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/MultiChoiceSendVCardActivity$WithMyselfCursor;->mMyselfCursor:Landroid/database/Cursor;

    return-object p1
.end method

.method private constructor <init>(Landroid/database/Cursor;)V
    .locals 0
    .param p1, "contactsCursor"    # Landroid/database/Cursor;

    .prologue
    .line 262
    invoke-direct {p0, p1}, Landroid/database/CursorWrapper;-><init>(Landroid/database/Cursor;)V

    .line 263
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/MultiChoiceSendVCardActivity$WithMyselfCursor;->mContactsCursor:Landroid/database/Cursor;

    .line 261
    return-void
.end method

.method synthetic constructor <init>(Landroid/database/Cursor;Lcom/sonyericsson/android/socialphonebook/MultiChoiceSendVCardActivity$WithMyselfCursor;)V
    .locals 0
    .param p1, "contactsCursor"    # Landroid/database/Cursor;

    .prologue
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/socialphonebook/MultiChoiceSendVCardActivity$WithMyselfCursor;-><init>(Landroid/database/Cursor;)V

    return-void
.end method
