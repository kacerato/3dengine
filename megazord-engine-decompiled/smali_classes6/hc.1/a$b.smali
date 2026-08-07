.class public Lhc/a$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lhc/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# static fields
.field public static a:Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Dictionary/ShaderTemplates;

.field public static final b:Lnc/d;

.field public static c:I

.field public static d:Lmc/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lnc/d;

    invoke-direct {v0}, Lnc/d;-><init>()V

    sput-object v0, Lhc/a$b;->b:Lnc/d;

    const/4 v0, 0x1

    sput v0, Lhc/a$b;->c:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lhc/a$b;->a:Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Dictionary/ShaderTemplates;

    return-void
.end method
