.class Lcom/sonyericsson/conversations/util/ContactLookup$3;
.super Lcom/sonymobile/forklift/HeavyProperty;
.source "ContactLookup.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/conversations/util/ContactLookup;->fetchStrequentContactsAsHeavyProperty()Lcom/sonymobile/forklift/HeavyProperty;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sonymobile/forklift/HeavyProperty",
        "<",
        "Landroid/util/LruCache",
        "<",
        "Ljava/lang/String;",
        "Landroid/service/chooser/ChooserTarget;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/conversations/util/ContactLookup;


# direct methods
.method constructor <init>(Lcom/sonyericsson/conversations/util/ContactLookup;Ljava/lang/Object;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/conversations/util/ContactLookup;
    .param p2, "$anonymous0"    # Ljava/lang/Object;

    .prologue
    .line 169
    iput-object p1, p0, Lcom/sonyericsson/conversations/util/ContactLookup$3;->this$0:Lcom/sonyericsson/conversations/util/ContactLookup;

    invoke-direct {p0, p2}, Lcom/sonymobile/forklift/HeavyProperty;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method protected onBackground()Landroid/util/LruCache;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/LruCache",
            "<",
            "Ljava/lang/String;",
            "Landroid/service/chooser/ChooserTarget;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 173
    iget-object v0, p0, Lcom/sonyericsson/conversations/util/ContactLookup$3;->this$0:Lcom/sonyericsson/conversations/util/ContactLookup;

    invoke-static {v0}, Lcom/sonyericsson/conversations/util/ContactLookup;->-wrap0(Lcom/sonyericsson/conversations/util/ContactLookup;)Landroid/util/LruCache;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic onBackground()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 172
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/util/ContactLookup$3;->onBackground()Landroid/util/LruCache;

    move-result-object v0

    return-object v0
.end method
