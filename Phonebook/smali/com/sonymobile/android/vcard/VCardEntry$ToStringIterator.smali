.class Lcom/sonymobile/android/vcard/VCardEntry$ToStringIterator;
.super Ljava/lang/Object;
.source "VCardEntry.java"

# interfaces
.implements Lcom/sonymobile/android/vcard/VCardEntry$EntryElementIterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/android/vcard/VCardEntry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ToStringIterator"
.end annotation


# instance fields
.field private mBuilder:Ljava/lang/StringBuilder;

.field private mFirstElement:Z

.field final synthetic this$0:Lcom/sonymobile/android/vcard/VCardEntry;


# direct methods
.method private constructor <init>(Lcom/sonymobile/android/vcard/VCardEntry;)V
    .locals 0

    .prologue
    .line 1658
    iput-object p1, p0, Lcom/sonymobile/android/vcard/VCardEntry$ToStringIterator;->this$0:Lcom/sonymobile/android/vcard/VCardEntry;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonymobile/android/vcard/VCardEntry;Lcom/sonymobile/android/vcard/VCardEntry$1;)V
    .locals 0

    .prologue
    .line 1658
    invoke-direct {p0, p1}, Lcom/sonymobile/android/vcard/VCardEntry$ToStringIterator;-><init>(Lcom/sonymobile/android/vcard/VCardEntry;)V

    return-void
.end method


# virtual methods
.method public onElement(Lcom/sonymobile/android/vcard/VCardEntry$EntryElement;)Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1677
    iget-boolean v0, p0, Lcom/sonymobile/android/vcard/VCardEntry$ToStringIterator;->mFirstElement:Z

    if-eqz v0, :cond_0

    .line 1681
    :goto_0
    iget-object v0, p0, Lcom/sonymobile/android/vcard/VCardEntry$ToStringIterator;->mBuilder:Ljava/lang/StringBuilder;

    const-string/jumbo v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1682
    const/4 v0, 0x1

    return v0

    .line 1678
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/android/vcard/VCardEntry$ToStringIterator;->mBuilder:Ljava/lang/StringBuilder;

    const-string/jumbo v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1679
    iput-boolean v2, p0, Lcom/sonymobile/android/vcard/VCardEntry$ToStringIterator;->mFirstElement:Z

    goto :goto_0
.end method

.method public onElementGroupEnded()V
    .locals 2

    .prologue
    .line 1687
    iget-object v0, p0, Lcom/sonymobile/android/vcard/VCardEntry$ToStringIterator;->mBuilder:Ljava/lang/StringBuilder;

    const-string/jumbo v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1688
    return-void
.end method

.method public onElementGroupStarted(Lcom/sonymobile/android/vcard/VCardEntry$EntryLabel;)V
    .locals 3

    .prologue
    .line 1671
    iget-object v0, p0, Lcom/sonymobile/android/vcard/VCardEntry$ToStringIterator;->mBuilder:Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/sonymobile/android/vcard/VCardEntry$EntryLabel;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1672
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonymobile/android/vcard/VCardEntry$ToStringIterator;->mFirstElement:Z

    .line 1673
    return-void
.end method

.method public onIterationEnded()V
    .locals 2

    .prologue
    .line 1692
    iget-object v0, p0, Lcom/sonymobile/android/vcard/VCardEntry$ToStringIterator;->mBuilder:Ljava/lang/StringBuilder;

    const-string/jumbo v1, "]]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1693
    return-void
.end method

.method public onIterationStarted()V
    .locals 3

    .prologue
    .line 1665
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/android/vcard/VCardEntry$ToStringIterator;->mBuilder:Ljava/lang/StringBuilder;

    .line 1666
    iget-object v0, p0, Lcom/sonymobile/android/vcard/VCardEntry$ToStringIterator;->mBuilder:Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "[[hash: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sonymobile/android/vcard/VCardEntry$ToStringIterator;->this$0:Lcom/sonymobile/android/vcard/VCardEntry;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1667
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1697
    iget-object v0, p0, Lcom/sonymobile/android/vcard/VCardEntry$ToStringIterator;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
