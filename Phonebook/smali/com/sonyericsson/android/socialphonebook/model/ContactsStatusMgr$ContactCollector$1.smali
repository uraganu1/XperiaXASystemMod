.class Lcom/sonyericsson/android/socialphonebook/model/ContactsStatusMgr$ContactCollector$1;
.super Ljava/lang/Object;
.source "ContactsStatusMgr.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/android/socialphonebook/model/ContactsStatusMgr$ContactCollector;->onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sonyericsson/android/socialphonebook/model/ContactsStatusMgr$ContactCollector;

.field final synthetic val$aCursor:Landroid/database/Cursor;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/socialphonebook/model/ContactsStatusMgr$ContactCollector;Landroid/database/Cursor;)V
    .locals 0
    .param p1, "this$1"    # Lcom/sonyericsson/android/socialphonebook/model/ContactsStatusMgr$ContactCollector;
    .param p2, "val$aCursor"    # Landroid/database/Cursor;

    .prologue
    .line 580
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/model/ContactsStatusMgr$ContactCollector$1;->this$1:Lcom/sonyericsson/android/socialphonebook/model/ContactsStatusMgr$ContactCollector;

    iput-object p2, p0, Lcom/sonyericsson/android/socialphonebook/model/ContactsStatusMgr$ContactCollector$1;->val$aCursor:Landroid/database/Cursor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 582
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/model/ContactsStatusMgr$ContactCollector$1;->this$1:Lcom/sonyericsson/android/socialphonebook/model/ContactsStatusMgr$ContactCollector;

    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/model/ContactsStatusMgr$ContactCollector$1;->val$aCursor:Landroid/database/Cursor;

    invoke-static {v0, v1}, Lcom/sonyericsson/android/socialphonebook/model/ContactsStatusMgr$ContactCollector;->-wrap0(Lcom/sonyericsson/android/socialphonebook/model/ContactsStatusMgr$ContactCollector;Landroid/database/Cursor;)V

    .line 581
    return-void
.end method
