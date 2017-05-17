.class public final Lcom/sonyericsson/android/socialphonebook/SimImportActivity$SimContactItem;
.super Ljava/lang/Object;
.source "SimImportActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/socialphonebook/SimImportActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1c
    name = "SimContactItem"
.end annotation


# instance fields
.field private email:Ljava/lang/String;

.field private extraNumber:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private number:Ljava/lang/String;


# direct methods
.method static synthetic -get0(Lcom/sonyericsson/android/socialphonebook/SimImportActivity$SimContactItem;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/SimImportActivity$SimContactItem;->email:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get1(Lcom/sonyericsson/android/socialphonebook/SimImportActivity$SimContactItem;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/SimImportActivity$SimContactItem;->extraNumber:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get2(Lcom/sonyericsson/android/socialphonebook/SimImportActivity$SimContactItem;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/SimImportActivity$SimContactItem;->name:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get3(Lcom/sonyericsson/android/socialphonebook/SimImportActivity$SimContactItem;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/SimImportActivity$SimContactItem;->number:Ljava/lang/String;

    return-object v0
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "aName"    # Ljava/lang/String;
    .param p2, "aNumber"    # Ljava/lang/String;
    .param p3, "aEmail"    # Ljava/lang/String;
    .param p4, "aExtraNumber"    # Ljava/lang/String;

    .prologue
    .line 320
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 321
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/SimImportActivity$SimContactItem;->name:Ljava/lang/String;

    .line 322
    iput-object p2, p0, Lcom/sonyericsson/android/socialphonebook/SimImportActivity$SimContactItem;->number:Ljava/lang/String;

    .line 323
    iput-object p3, p0, Lcom/sonyericsson/android/socialphonebook/SimImportActivity$SimContactItem;->email:Ljava/lang/String;

    .line 324
    iput-object p4, p0, Lcom/sonyericsson/android/socialphonebook/SimImportActivity$SimContactItem;->extraNumber:Ljava/lang/String;

    .line 320
    return-void
.end method
