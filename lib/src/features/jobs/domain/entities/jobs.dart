class JobsEntity {
  JobsEntity({
    required this.key,
    required this.startTime,
    required this.endTime,
    required this.state,
    required this.jobPriority,
    required this.specificPriorityValue,
    required this.resourceOverwrites,
    required this.source,
    required this.sourceType,
    required this.batchExecutionKey,
    required this.info,
    required this.creationTime,
    required this.startingScheduleId,
    required this.releaseName,
    required this.type,
    required this.inputArguments,
    required this.environmentVariables,
    required this.outputArguments,
    required this.hostMachineName,
    required this.hasMediaRecorded,
    required this.hasVideoRecorded,
    required this.persistenceId,
    required this.resumeVersion,
    required this.stopStrategy,
    required this.customRuntimeType,
    required this.requiresUserInteraction,
    required this.releaseVersionId,
    required this.entryPointPath,
    required this.organizationUnitId,
    required this.organizationUnitFullyQualifiedName,
    required this.reference,
    required this.processType,
    required this.profilingOptions,
    required this.resumeOnSameContext,
    required this.localSystemAccount,
    required this.orchestratorUserIdentity,
    required this.remoteControlAccess,
    required this.startingTriggerId,
    required this.maxExpectedRunningTimeSeconds,
    required this.serverlessJobType,
    required this.parentJobKey,
    required this.resumeTime,
    required this.lastModificationTime,
    required this.errorCode,
    required this.fpsProperties,
    required this.traceId,
    required this.parentSpanId,
    required this.projectKey,
    required this.creatorUserKey,
    required this.parentOperationId,
    required this.enableAutopilotHealing,
    required this.fpsContext,
    required this.autoHealStatus,
    required this.id,
    required this.jobError,
    required this.autopilotForRobots,
  });

  final String? key;
  final DateTime? startTime;
  final DateTime? endTime;
  final String? state;
  final String? jobPriority;
  final int? specificPriorityValue;
  final dynamic resourceOverwrites;
  final String? source;
  final String? sourceType;
  final String? batchExecutionKey;
  final String? info;
  final DateTime? creationTime;
  final dynamic startingScheduleId;
  final String? releaseName;
  final String? type;
  final dynamic inputArguments;
  final dynamic environmentVariables;
  final dynamic outputArguments;
  final String? hostMachineName;
  final bool? hasMediaRecorded;
  final bool? hasVideoRecorded;
  final dynamic persistenceId;
  final dynamic resumeVersion;
  final dynamic stopStrategy;
  final String? customRuntimeType;
  final bool? requiresUserInteraction;
  final int? releaseVersionId;
  final String? entryPointPath;
  final int? organizationUnitId;
  final String? organizationUnitFullyQualifiedName;
  final String? reference;
  final String? processType;
  final dynamic profilingOptions;
  final bool? resumeOnSameContext;
  final String? localSystemAccount;
  final dynamic orchestratorUserIdentity;
  final String? remoteControlAccess;
  final dynamic startingTriggerId;
  final dynamic maxExpectedRunningTimeSeconds;
  final dynamic serverlessJobType;
  final dynamic parentJobKey;
  final dynamic resumeTime;
  final DateTime? lastModificationTime;
  final dynamic errorCode;
  final dynamic fpsProperties;
  final dynamic traceId;
  final dynamic parentSpanId;
  final String? projectKey;
  final String? creatorUserKey;
  final dynamic parentOperationId;
  final bool? enableAutopilotHealing;
  final dynamic fpsContext;
  final dynamic autoHealStatus;
  final int? id;
  final dynamic jobError;
  final dynamic autopilotForRobots;
}
