.class final Lcom/sonymobile/settings/nfc/AidRoutingSimulator$PrefixConflicts;
.super Ljava/lang/Object;
.source "AidRoutingSimulator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/settings/nfc/AidRoutingSimulator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "PrefixConflicts"
.end annotation


# instance fields
.field final aids:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field conflictMap:Ljava/util/NavigableMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/NavigableMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sonymobile/settings/nfc/AidRoutingSimulator$ServiceAidInfo;",
            ">;>;"
        }
    .end annotation
.end field

.field final services:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sonymobile/settings/nfc/AidRoutingSimulator$ServiceAidInfo;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/sonymobile/settings/nfc/AidRoutingSimulator;


# direct methods
.method constructor <init>(Lcom/sonymobile/settings/nfc/AidRoutingSimulator;)V
    .locals 1
    .param p1, "this$0"    # Lcom/sonymobile/settings/nfc/AidRoutingSimulator;

    .prologue
    .line 110
    iput-object p1, p0, Lcom/sonymobile/settings/nfc/AidRoutingSimulator$PrefixConflicts;->this$0:Lcom/sonymobile/settings/nfc/AidRoutingSimulator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 112
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/settings/nfc/AidRoutingSimulator$PrefixConflicts;->services:Ljava/util/ArrayList;

    .line 113
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/settings/nfc/AidRoutingSimulator$PrefixConflicts;->aids:Ljava/util/HashSet;

    .line 110
    return-void
.end method
