.class public Lcom/sonymobile/settings/search/SomcIndexUtil$ResultObjectsHolder;
.super Ljava/lang/Object;
.source "SomcIndexUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/settings/search/SomcIndexUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ResultObjectsHolder"
.end annotation


# instance fields
.field public className:Ljava/lang/String;

.field public database:Landroid/database/sqlite/SQLiteDatabase;

.field public enabled:Z

.field public entries:Ljava/lang/String;

.field public iconResId:I

.field public intentAction:Ljava/lang/String;

.field public intentTargetClass:Ljava/lang/String;

.field public intentTargetPackage:Ljava/lang/String;

.field public key:Ljava/lang/String;

.field public keywords:Ljava/lang/String;

.field public locale:Ljava/lang/String;

.field public rank:I

.field public screenTitle:Ljava/lang/String;

.field public summaryOff:Ljava/lang/String;

.field public summaryOn:Ljava/lang/String;

.field public title:Ljava/lang/String;

.field public userId:I


# direct methods
.method public constructor <init>(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;I)V
    .locals 1
    .param p1, "database"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "locale"    # Ljava/lang/String;
    .param p3, "title"    # Ljava/lang/String;
    .param p4, "summaryOn"    # Ljava/lang/String;
    .param p5, "summaryOff"    # Ljava/lang/String;
    .param p6, "entries"    # Ljava/lang/String;
    .param p7, "className"    # Ljava/lang/String;
    .param p8, "screenTitle"    # Ljava/lang/String;
    .param p9, "iconResId"    # I
    .param p10, "rank"    # I
    .param p11, "keywords"    # Ljava/lang/String;
    .param p12, "intentAction"    # Ljava/lang/String;
    .param p13, "intentTargetPackage"    # Ljava/lang/String;
    .param p14, "intentTargetClass"    # Ljava/lang/String;
    .param p15, "enabled"    # Z
    .param p16, "key"    # Ljava/lang/String;
    .param p17, "userId"    # I

    .prologue
    .line 503
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 508
    iput-object p1, p0, Lcom/sonymobile/settings/search/SomcIndexUtil$ResultObjectsHolder;->database:Landroid/database/sqlite/SQLiteDatabase;

    .line 509
    iput-object p2, p0, Lcom/sonymobile/settings/search/SomcIndexUtil$ResultObjectsHolder;->locale:Ljava/lang/String;

    .line 510
    iput-object p3, p0, Lcom/sonymobile/settings/search/SomcIndexUtil$ResultObjectsHolder;->title:Ljava/lang/String;

    .line 511
    iput-object p4, p0, Lcom/sonymobile/settings/search/SomcIndexUtil$ResultObjectsHolder;->summaryOn:Ljava/lang/String;

    .line 512
    iput-object p5, p0, Lcom/sonymobile/settings/search/SomcIndexUtil$ResultObjectsHolder;->summaryOff:Ljava/lang/String;

    .line 513
    iput-object p6, p0, Lcom/sonymobile/settings/search/SomcIndexUtil$ResultObjectsHolder;->entries:Ljava/lang/String;

    .line 514
    iput-object p7, p0, Lcom/sonymobile/settings/search/SomcIndexUtil$ResultObjectsHolder;->className:Ljava/lang/String;

    .line 515
    iput-object p8, p0, Lcom/sonymobile/settings/search/SomcIndexUtil$ResultObjectsHolder;->screenTitle:Ljava/lang/String;

    .line 516
    iput p9, p0, Lcom/sonymobile/settings/search/SomcIndexUtil$ResultObjectsHolder;->iconResId:I

    .line 517
    iput p10, p0, Lcom/sonymobile/settings/search/SomcIndexUtil$ResultObjectsHolder;->rank:I

    .line 518
    iput-object p11, p0, Lcom/sonymobile/settings/search/SomcIndexUtil$ResultObjectsHolder;->keywords:Ljava/lang/String;

    .line 519
    iput-object p12, p0, Lcom/sonymobile/settings/search/SomcIndexUtil$ResultObjectsHolder;->intentAction:Ljava/lang/String;

    .line 520
    iput-object p13, p0, Lcom/sonymobile/settings/search/SomcIndexUtil$ResultObjectsHolder;->intentTargetPackage:Ljava/lang/String;

    .line 521
    iput-object p14, p0, Lcom/sonymobile/settings/search/SomcIndexUtil$ResultObjectsHolder;->intentTargetClass:Ljava/lang/String;

    .line 522
    move/from16 v0, p15

    iput-boolean v0, p0, Lcom/sonymobile/settings/search/SomcIndexUtil$ResultObjectsHolder;->enabled:Z

    .line 523
    move-object/from16 v0, p16

    iput-object v0, p0, Lcom/sonymobile/settings/search/SomcIndexUtil$ResultObjectsHolder;->key:Ljava/lang/String;

    .line 524
    move/from16 v0, p17

    iput v0, p0, Lcom/sonymobile/settings/search/SomcIndexUtil$ResultObjectsHolder;->userId:I

    .line 507
    return-void
.end method
