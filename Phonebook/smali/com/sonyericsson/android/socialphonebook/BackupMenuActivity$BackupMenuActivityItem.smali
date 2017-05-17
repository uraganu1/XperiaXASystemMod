.class public Lcom/sonyericsson/android/socialphonebook/BackupMenuActivity$BackupMenuActivityItem;
.super Ljava/lang/Object;
.source "BackupMenuActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/socialphonebook/BackupMenuActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "BackupMenuActivityItem"
.end annotation


# instance fields
.field public path:Ljava/lang/String;

.field public selectionHandler:Lcom/sonyericsson/android/socialphonebook/BackupMenuActivity$BackupMenuSelectionHandler;

.field public title_1:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/sonyericsson/android/socialphonebook/BackupMenuActivity$BackupMenuSelectionHandler;Ljava/lang/String;)V
    .locals 0
    .param p1, "title_1"    # Ljava/lang/String;
    .param p2, "selectionHandler"    # Lcom/sonyericsson/android/socialphonebook/BackupMenuActivity$BackupMenuSelectionHandler;
    .param p3, "path"    # Ljava/lang/String;

    .prologue
    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 105
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/BackupMenuActivity$BackupMenuActivityItem;->title_1:Ljava/lang/String;

    .line 106
    iput-object p2, p0, Lcom/sonyericsson/android/socialphonebook/BackupMenuActivity$BackupMenuActivityItem;->selectionHandler:Lcom/sonyericsson/android/socialphonebook/BackupMenuActivity$BackupMenuSelectionHandler;

    .line 107
    iput-object p3, p0, Lcom/sonyericsson/android/socialphonebook/BackupMenuActivity$BackupMenuActivityItem;->path:Ljava/lang/String;

    .line 104
    return-void
.end method


# virtual methods
.method public handleSelected()V
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/BackupMenuActivity$BackupMenuActivityItem;->selectionHandler:Lcom/sonyericsson/android/socialphonebook/BackupMenuActivity$BackupMenuSelectionHandler;

    if-eqz v0, :cond_0

    .line 112
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/BackupMenuActivity$BackupMenuActivityItem;->selectionHandler:Lcom/sonyericsson/android/socialphonebook/BackupMenuActivity$BackupMenuSelectionHandler;

    invoke-interface {v0, p0}, Lcom/sonyericsson/android/socialphonebook/BackupMenuActivity$BackupMenuSelectionHandler;->onSelected(Lcom/sonyericsson/android/socialphonebook/BackupMenuActivity$BackupMenuActivityItem;)V

    .line 110
    :cond_0
    return-void
.end method
