.class public LO6/b$z;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr7/f$g;

# instance fields
.field public final synthetic a:Ljava/lang/String;
.field public final synthetic b:LO6/b;

# direct methods
.method public constructor <init>(LO6/b;Ljava/lang/String;)V
    .locals 0
    iput-object p1, p0, LO6/b$z;->b:LO6/b;
    iput-object p2, p0, LO6/b$z;->a:Ljava/lang/String;
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V
    return-void
.end method

# virtual methods
.method public c(Ljava/lang/String;)V
    .locals 2
    iget-object v0, p0, LO6/b$z;->b:LO6/b;
    iget-object v1, p0, LO6/b$z;->a:Ljava/lang/String;
    invoke-virtual {v0, v1, p1}, LO6/b;->L1(Ljava/lang/String;Ljava/lang/String;)V
    return-void
.end method

.method public onCancel()V
    .locals 0
    return-void
.end method
