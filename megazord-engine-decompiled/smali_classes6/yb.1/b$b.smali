.class public final Lyb/b$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lyb/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field public final a:LUb/f;

.field public final b:LUb/f;

.field public final c:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

.field public final d:Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

.field public final e:[F


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, LUb/f;

    invoke-direct {v0}, LUb/f;-><init>()V

    iput-object v0, p0, Lyb/b$b;->a:LUb/f;

    .line 3
    new-instance v0, LUb/f;

    invoke-direct {v0}, LUb/f;-><init>()V

    iput-object v0, p0, Lyb/b$b;->b:LUb/f;

    .line 4
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>()V

    iput-object v0, p0, Lyb/b$b;->c:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    .line 5
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;-><init>()V

    iput-object v0, p0, Lyb/b$b;->d:Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    const/16 v0, 0x10

    .line 6
    new-array v0, v0, [F

    iput-object v0, p0, Lyb/b$b;->e:[F

    return-void
.end method

.method public synthetic constructor <init>(Lyb/b$a;)V
    .locals 0

    .line 7
    invoke-direct {p0}, Lyb/b$b;-><init>()V

    return-void
.end method

.method public static synthetic a(Lyb/b$b;)LUb/f;
    .locals 0

    iget-object p0, p0, Lyb/b$b;->a:LUb/f;

    return-object p0
.end method

.method public static synthetic b(Lyb/b$b;)[F
    .locals 0

    iget-object p0, p0, Lyb/b$b;->e:[F

    return-object p0
.end method

.method public static synthetic c(Lyb/b$b;)LUb/f;
    .locals 0

    iget-object p0, p0, Lyb/b$b;->b:LUb/f;

    return-object p0
.end method

.method public static synthetic d(Lyb/b$b;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;
    .locals 0

    iget-object p0, p0, Lyb/b$b;->c:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    return-object p0
.end method

.method public static synthetic e(Lyb/b$b;)Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;
    .locals 0

    iget-object p0, p0, Lyb/b$b;->d:Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    return-object p0
.end method
