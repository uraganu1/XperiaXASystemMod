.class Lcom/sonyericsson/conversations/util/ContactLookup$1;
.super Landroid/database/ContentObserver;
.source "ContactLookup.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/conversations/util/ContactLookup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/conversations/util/ContactLookup;


# direct methods
.method constructor <init>(Lcom/sonyericsson/conversations/util/ContactLookup;Landroid/os/Handler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/conversations/util/ContactLookup;
    .param p2, "$anonymous0"    # Landroid/os/Handler;

    .prologue
    .line 268
    iput-object p1, p0, Lcom/sonyericsson/conversations/util/ContactLookup$1;->this$0:Lcom/sonyericsson/conversations/util/ContactLookup;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1
    .param p1, "selfChange"    # Z

    .prologue
    .line 271
    iget-object v0, p0, Lcom/sonyericsson/conversations/util/ContactLookup$1;->this$0:Lcom/sonyericsson/conversations/util/ContactLookup;

    invoke-static {v0}, Lcom/sonyericsson/conversations/util/ContactLookup;->-get7(Lcom/sonyericsson/conversations/util/ContactLookup;)Lcom/sonyericsson/conversations/util/ContactLookup$Throttler;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/conversations/util/ContactLookup$Throttler;->-wrap0(Lcom/sonyericsson/conversations/util/ContactLookup$Throttler;)V

    .line 270
    return-void
.end method
