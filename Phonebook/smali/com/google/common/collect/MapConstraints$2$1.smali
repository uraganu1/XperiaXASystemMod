.class Lcom/google/common/collect/MapConstraints$2$1;
.super Ljava/lang/Object;
.source "MapConstraints.java"

# interfaces
.implements Lcom/google/common/collect/Constraint;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/MapConstraints$2;->getValue()Ljava/util/Collection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/common/collect/Constraint",
        "<TV;>;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/common/collect/MapConstraints$2;

.field final synthetic val$constraint:Lcom/google/common/collect/MapConstraint;


# direct methods
.method constructor <init>(Lcom/google/common/collect/MapConstraints$2;Lcom/google/common/collect/MapConstraint;)V
    .locals 0
    .param p1, "this$1"    # Lcom/google/common/collect/MapConstraints$2;

    .prologue
    .line 220
    .local p2, "val$constraint":Lcom/google/common/collect/MapConstraint;, "Lcom/google/common/collect/MapConstraint<-TK;-TV;>;"
    iput-object p1, p0, Lcom/google/common/collect/MapConstraints$2$1;->this$1:Lcom/google/common/collect/MapConstraints$2;

    iput-object p2, p0, Lcom/google/common/collect/MapConstraints$2$1;->val$constraint:Lcom/google/common/collect/MapConstraint;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public checkElement(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)TV;"
        }
    .end annotation

    .prologue
    .line 223
    .local p1, "value":Ljava/lang/Object;, "TV;"
    iget-object v0, p0, Lcom/google/common/collect/MapConstraints$2$1;->val$constraint:Lcom/google/common/collect/MapConstraint;

    iget-object v1, p0, Lcom/google/common/collect/MapConstraints$2$1;->this$1:Lcom/google/common/collect/MapConstraints$2;

    invoke-virtual {v1}, Lcom/google/common/collect/MapConstraints$2;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lcom/google/common/collect/MapConstraint;->checkKeyValue(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 224
    return-object p1
.end method
