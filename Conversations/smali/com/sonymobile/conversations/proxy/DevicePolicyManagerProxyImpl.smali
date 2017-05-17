.class public Lcom/sonymobile/conversations/proxy/DevicePolicyManagerProxyImpl;
.super Ljava/lang/Object;
.source "DevicePolicyManagerProxyImpl.java"

# interfaces
.implements Lcom/sonymobile/conversations/proxy/IDevicePolicyManagerProxy;


# instance fields
.field mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonymobile/conversations/proxy/DevicePolicyManagerProxyImpl;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    .line 15
    return-void
.end method

.method private getDevicePolicyManager(Landroid/content/Context;)Landroid/app/admin/DevicePolicyManager;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 20
    iget-object v0, p0, Lcom/sonymobile/conversations/proxy/DevicePolicyManagerProxyImpl;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    if-nez v0, :cond_0

    .line 22
    const-string/jumbo v0, "device_policy"

    .line 21
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    iput-object v0, p0, Lcom/sonymobile/conversations/proxy/DevicePolicyManagerProxyImpl;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    .line 24
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/conversations/proxy/DevicePolicyManagerProxyImpl;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    return-object v0
.end method


# virtual methods
.method public isTextMessagingDisabled(Landroid/content/Context;Landroid/content/ComponentName;)Z
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "admin"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchMethodException;,
            Ljava/lang/ClassNotFoundException;,
            Ljava/lang/reflect/InvocationTargetException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 31
    const-string/jumbo v0, "isTextMessagingDisabled"

    .line 32
    .local v0, "IS_TEXT_MESSAGING_DISABLED_METHOD_NAME":Ljava/lang/String;
    invoke-direct {p0, p1}, Lcom/sonymobile/conversations/proxy/DevicePolicyManagerProxyImpl;->getDevicePolicyManager(Landroid/content/Context;)Landroid/app/admin/DevicePolicyManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/admin/DevicePolicyManager;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 34
    .local v1, "dpmClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string/jumbo v3, "isTextMessagingDisabled"

    .line 33
    new-array v4, v7, [Ljava/lang/Class;

    .line 34
    const-class v5, Landroid/content/ComponentName;

    aput-object v5, v4, v6

    .line 33
    invoke-virtual {v1, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 35
    .local v2, "isMessagingDisabledMethod":Ljava/lang/reflect/Method;
    invoke-direct {p0, p1}, Lcom/sonymobile/conversations/proxy/DevicePolicyManagerProxyImpl;->getDevicePolicyManager(Landroid/content/Context;)Landroid/app/admin/DevicePolicyManager;

    move-result-object v3

    new-array v4, v7, [Ljava/lang/Object;

    aput-object p2, v4, v6

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    return v3
.end method
