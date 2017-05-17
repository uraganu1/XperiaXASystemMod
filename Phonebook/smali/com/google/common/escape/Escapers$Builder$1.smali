.class Lcom/google/common/escape/Escapers$Builder$1;
.super Lcom/google/common/escape/ArrayBasedCharEscaper;
.source "Escapers.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/escape/Escapers$Builder;->build()Lcom/google/common/escape/Escaper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final replacementChars:[C

.field final synthetic this$1:Lcom/google/common/escape/Escapers$Builder;


# direct methods
.method constructor <init>(Lcom/google/common/escape/Escapers$Builder;Ljava/util/Map;CC)V
    .locals 2
    .param p1, "this$1"    # Lcom/google/common/escape/Escapers$Builder;
    .param p3, "$anonymous1"    # C
    .param p4, "$anonymous2"    # C

    .prologue
    .local p2, "$anonymous0":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Character;Ljava/lang/String;>;"
    const/4 v0, 0x0

    .line 156
    iput-object p1, p0, Lcom/google/common/escape/Escapers$Builder$1;->this$1:Lcom/google/common/escape/Escapers$Builder;

    invoke-direct {p0, p2, p3, p4}, Lcom/google/common/escape/ArrayBasedCharEscaper;-><init>(Ljava/util/Map;CC)V

    .line 158
    iget-object v1, p0, Lcom/google/common/escape/Escapers$Builder$1;->this$1:Lcom/google/common/escape/Escapers$Builder;

    invoke-static {v1}, Lcom/google/common/escape/Escapers$Builder;->-get0(Lcom/google/common/escape/Escapers$Builder;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/google/common/escape/Escapers$Builder$1;->this$1:Lcom/google/common/escape/Escapers$Builder;

    invoke-static {v0}, Lcom/google/common/escape/Escapers$Builder;->-get0(Lcom/google/common/escape/Escapers$Builder;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 157
    :cond_0
    iput-object v0, p0, Lcom/google/common/escape/Escapers$Builder$1;->replacementChars:[C

    .line 156
    return-void
.end method


# virtual methods
.method protected escapeUnsafe(C)[C
    .locals 1
    .param p1, "c"    # C

    .prologue
    .line 160
    iget-object v0, p0, Lcom/google/common/escape/Escapers$Builder$1;->replacementChars:[C

    return-object v0
.end method
