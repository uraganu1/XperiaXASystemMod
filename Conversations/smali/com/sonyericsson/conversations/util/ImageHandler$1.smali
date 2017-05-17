.class final Lcom/sonyericsson/conversations/util/ImageHandler$1;
.super Ljava/lang/Object;
.source "ImageHandler.java"

# interfaces
.implements Lcom/sonyericsson/conversations/util/ContactLookup$ContactInformationChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/conversations/util/ImageHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 188
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onContactInformationChanged(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 191
    .local p1, "contactsAddress":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {p1}, Lcom/sonyericsson/conversations/util/ImageHandler;->-wrap3(Ljava/util/Collection;)V

    .line 190
    return-void
.end method

.method public onProfileInformationChanged(Ljava/lang/String;)V
    .locals 1
    .param p1, "profileAddress"    # Ljava/lang/String;

    .prologue
    .line 196
    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/conversations/util/ImageHandler;->-wrap3(Ljava/util/Collection;)V

    .line 195
    return-void
.end method
