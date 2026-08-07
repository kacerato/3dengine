.class public final synthetic Lf7/t;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lf7/v;

.field public final synthetic c:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphNode;

.field public final synthetic d:Ljava/lang/String;

.field public final synthetic e:J


# direct methods
.method public synthetic constructor <init>(Lf7/v;Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphNode;Ljava/lang/String;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lf7/t;->b:Lf7/v;

    iput-object p2, p0, Lf7/t;->c:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphNode;

    iput-object p3, p0, Lf7/t;->d:Ljava/lang/String;

    iput-wide p4, p0, Lf7/t;->e:J

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lf7/t;->b:Lf7/v;

    iget-object v1, p0, Lf7/t;->c:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphNode;

    iget-object v2, p0, Lf7/t;->d:Ljava/lang/String;

    iget-wide v3, p0, Lf7/t;->e:J

    invoke-static {v0, v1, v2, v3, v4}, Lf7/v;->b(Lf7/v;Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphNode;Ljava/lang/String;J)V

    return-void
.end method
