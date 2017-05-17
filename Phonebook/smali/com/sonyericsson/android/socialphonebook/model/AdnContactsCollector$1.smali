.class Lcom/sonyericsson/android/socialphonebook/model/AdnContactsCollector$1;
.super Ljava/lang/Object;
.source "AdnContactsCollector.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/android/socialphonebook/model/AdnContactsCollector;->refreshContacts()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/socialphonebook/model/AdnContactsCollector;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/socialphonebook/model/AdnContactsCollector;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/android/socialphonebook/model/AdnContactsCollector;

    .prologue
    .line 161
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/model/AdnContactsCollector$1;->this$0:Lcom/sonyericsson/android/socialphonebook/model/AdnContactsCollector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 164
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/model/AdnContactsCollector$1;->this$0:Lcom/sonyericsson/android/socialphonebook/model/AdnContactsCollector;

    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/model/AdnContactsCollector;->-get2(Lcom/sonyericsson/android/socialphonebook/model/AdnContactsCollector;)Lcom/sonyericsson/android/socialphonebook/model/AdnContactsCollector$ContactCollector;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/model/AdnContactsCollector$1;->this$0:Lcom/sonyericsson/android/socialphonebook/model/AdnContactsCollector;

    invoke-static {v1}, Lcom/sonyericsson/android/socialphonebook/model/AdnContactsCollector;->-get1(Lcom/sonyericsson/android/socialphonebook/model/AdnContactsCollector;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/socialphonebook/model/AdnContactsCollector$ContactCollector;->refresh(Ljava/lang/Runnable;)V

    .line 163
    return-void
.end method
