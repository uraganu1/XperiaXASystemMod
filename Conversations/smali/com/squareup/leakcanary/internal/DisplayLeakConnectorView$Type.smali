.class public final enum Lcom/squareup/leakcanary/internal/DisplayLeakConnectorView$Type;
.super Ljava/lang/Enum;
.source "DisplayLeakConnectorView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/squareup/leakcanary/internal/DisplayLeakConnectorView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/squareup/leakcanary/internal/DisplayLeakConnectorView$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/squareup/leakcanary/internal/DisplayLeakConnectorView$Type;

.field public static final enum END:Lcom/squareup/leakcanary/internal/DisplayLeakConnectorView$Type;

.field public static final enum NODE:Lcom/squareup/leakcanary/internal/DisplayLeakConnectorView$Type;

.field public static final enum START:Lcom/squareup/leakcanary/internal/DisplayLeakConnectorView$Type;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 44
    new-instance v0, Lcom/squareup/leakcanary/internal/DisplayLeakConnectorView$Type;

    const-string/jumbo v1, "START"

    invoke-direct {v0, v1, v2}, Lcom/squareup/leakcanary/internal/DisplayLeakConnectorView$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/squareup/leakcanary/internal/DisplayLeakConnectorView$Type;->START:Lcom/squareup/leakcanary/internal/DisplayLeakConnectorView$Type;

    new-instance v0, Lcom/squareup/leakcanary/internal/DisplayLeakConnectorView$Type;

    const-string/jumbo v1, "NODE"

    invoke-direct {v0, v1, v3}, Lcom/squareup/leakcanary/internal/DisplayLeakConnectorView$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/squareup/leakcanary/internal/DisplayLeakConnectorView$Type;->NODE:Lcom/squareup/leakcanary/internal/DisplayLeakConnectorView$Type;

    new-instance v0, Lcom/squareup/leakcanary/internal/DisplayLeakConnectorView$Type;

    const-string/jumbo v1, "END"

    invoke-direct {v0, v1, v4}, Lcom/squareup/leakcanary/internal/DisplayLeakConnectorView$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/squareup/leakcanary/internal/DisplayLeakConnectorView$Type;->END:Lcom/squareup/leakcanary/internal/DisplayLeakConnectorView$Type;

    const/4 v0, 0x3

    .line 43
    new-array v0, v0, [Lcom/squareup/leakcanary/internal/DisplayLeakConnectorView$Type;

    sget-object v1, Lcom/squareup/leakcanary/internal/DisplayLeakConnectorView$Type;->START:Lcom/squareup/leakcanary/internal/DisplayLeakConnectorView$Type;

    aput-object v1, v0, v2

    sget-object v1, Lcom/squareup/leakcanary/internal/DisplayLeakConnectorView$Type;->NODE:Lcom/squareup/leakcanary/internal/DisplayLeakConnectorView$Type;

    aput-object v1, v0, v3

    sget-object v1, Lcom/squareup/leakcanary/internal/DisplayLeakConnectorView$Type;->END:Lcom/squareup/leakcanary/internal/DisplayLeakConnectorView$Type;

    aput-object v1, v0, v4

    sput-object v0, Lcom/squareup/leakcanary/internal/DisplayLeakConnectorView$Type;->$VALUES:[Lcom/squareup/leakcanary/internal/DisplayLeakConnectorView$Type;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 43
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/squareup/leakcanary/internal/DisplayLeakConnectorView$Type;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    const-class v0, Lcom/squareup/leakcanary/internal/DisplayLeakConnectorView$Type;

    .line 43
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/squareup/leakcanary/internal/DisplayLeakConnectorView$Type;

    return-object v0
.end method

.method public static values()[Lcom/squareup/leakcanary/internal/DisplayLeakConnectorView$Type;
    .locals 1

    .prologue
    .line 43
    sget-object v0, Lcom/squareup/leakcanary/internal/DisplayLeakConnectorView$Type;->$VALUES:[Lcom/squareup/leakcanary/internal/DisplayLeakConnectorView$Type;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/squareup/leakcanary/internal/DisplayLeakConnectorView$Type;

    return-object v0
.end method
